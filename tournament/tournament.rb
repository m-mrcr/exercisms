class Tournament
  def self.tally input
    format(input)
  end

  def self.format input
    bracket = {}
    get_games(input).each do |game|
      binding.pry
      bracket[:home_team] = {MP: 0, W: 0, D: 0, L: 0, P: 0}
      bracket[:away_team] = {MP: 0, W: 0, D: 0, L: 0, P: 0}
      score(game)
    end
  end
  
  def self.score input
    binding.pry
    outcome = input[:outcome]
    case outcome
      when win
        @bracket[:home_team][:MP] += 1
        @bracket[:home_team][:W] += 1
        @bracket[:home_team][:P] += 3

        @bracket[:away_team][:MP] += 1
        @bracket[:away_team][:L] += 1
      when draw
        @bracket[:home_team][:MP] += 1
        @bracket[:home_team][:D] += 1
        @bracket[:home_team][:P] += 1

        @bracket[:away_team][:MP] += 1
        @bracket[:away_team][:D] += 1
        @bracket[:away_team][:P] += 1
      when loss
        @bracket[:home_team][:MP] += 1
        @bracket[:home_team][:D] += 1
        @bracket[:home_team][:P] += 1

        @bracket[:away_team][:MP] += 1
        @bracket[:away_team][:D] += 1
        @bracket[:away_team][:P] += 1
    end
  end
  
  private
  
  def self.get_games input
    step1 = input.split("\n").map {|game| game.split(';')}
    step2 = step1.map do |game|
      {:home_team => game[0], :away_team => game[1], :outcome => game[2]}
    end
  end
  
end

# input.split(';')[2].include?("win")

# - MP: Matches Played
# - W: Matches Won
# - D: Matches Drawn (Tied)
# - L: Matches Lost
# - P: Points

# A win earns a team 3 points. A draw earns 1. A loss earns 0.

# The outcome should be ordered by points, descending. In case of a tie, teams are ordered alphabetically.

# The result of the match refers to the first team listed. So this line

# ```text
# Allegoric Alaskans;Blithering Badgers;win
# ```

# Means that the Allegoric Alaskans beat the Blithering Badgers.