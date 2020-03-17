class Matrix
  attr_reader :input
  def initialize(input)
      @input = input
  end

  def rows
    input.split("\n").map {|n| n.split(' ').map(&:to_i)}
  end
end