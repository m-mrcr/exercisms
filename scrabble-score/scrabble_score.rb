class Scrabble
  def initialize(input)
    @input = input 
  end

  def self.score(input)
    @input = String === input ? input.upcase.tr('^A-Za-z0-9', '') : ""
    total_score = 0
    @input.split('').each do |letter|
      scoring = case
        when %w(A E I O U L N R S T).include?(letter) then 1
        when %w(D G).include?(letter) then 2
        when %w(B C M P).include?(letter) then 3
        when %w(F H V W Y).include?(letter) then 4
        when %w(K).include?(letter) then 5
        when %w(J X).include?(letter) then 8
        when %w(Q Z).include?(letter) then 10
      end
      total_score += scoring 
    end
    total_score
  end

  def score
    self.class.score(@input)
  end

end
