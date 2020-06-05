class Anagram
  def initialize input
    @input = input.downcase
  end

  def match words
    words.delete_if {|w| !anagram?(w)}
  end

  def anagram? word
    @input == word.downcase ? false : sorted(@input) == sorted(word)
  end

  def sorted word
    word.downcase.chars.sort
  end
end