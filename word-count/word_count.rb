class Phrase
  def initialize(input)
    @input = input.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    counts = @input.each_with_object(Hash.new(0)) {|word, counts| counts[word] += 1}
  end
end