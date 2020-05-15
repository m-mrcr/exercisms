class Tournament
  HEADER = 'Team                           | MP |  W |  D |  L |  P'
  
  def initialize
    @input = nil
    @bracket = nil
  end
  
  def self.tally input
    @input = input
    gather_stats
    sort
    format
  end

  class << self
    private

    def format
      scores_formatted_for_output = @bracket.map do |k,v|
        "#{k.ljust(31, ' ')}|  #{v[:MP]} |  #{v[:W]} |  #{v[:D]} |  #{v[:L]} |  #{v[:P]}"
      end
      expected = <<~TALLY
        #{HEADER}
      TALLY
      if @input.length > 1
        scores_formatted_for_output.each do |score|
          expected += score + "\n"
        end
      end
      expected
    end

    def sort
      @bracket = @bracket.sort_by {|k,v| [-v[:P], k]}
    end

    def gather_stats
      get_components(@input).each do |game|
        score(game)
      end
    end
    
    def score game
      outcome = game[:outcome]
      home_team = @bracket[game[:home_team]]
      away_team = @bracket[game[:away_team]]
      case outcome
      when "win"
        home_team[:MP] += 1
        away_team[:MP] += 1
        home_team[:W] += 1
        home_team[:P] += 3
        away_team[:L] += 1
      when "draw"
        home_team[:MP] += 1
        away_team[:MP] += 1
        home_team[:D] += 1
        away_team[:D] += 1
        home_team[:P] += 1
        away_team[:P] += 1
      when "loss"
        home_team[:MP] += 1
        away_team[:MP] += 1
        home_team[:L] += 1
        away_team[:W] += 1
        away_team[:P] += 3
      end
    end
    
    def get_components input
      processed = @input.split("\n").map {|game| game.split(';')}
      get_teams(processed)
      get_games(processed)
    end

    def get_games input
      input.map do |game|
        {:home_team => game[0], :away_team => game[1], :outcome => game[2]}
      end
    end

    def get_teams input
      @bracket = {}
      teams = input.flat_map {|game| [game[0], game[1]]}.uniq
      teams.each {|team| @bracket[team] = {MP: 0, W: 0, D: 0, L: 0, P: 0}}
    end
  end
end