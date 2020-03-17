class Matrix
  attr_reader :input
  def initialize(input)
      @input = input
  end

  def rows
    input.split("\n").map {|n| n.split(' ').map(&:to_i)}
  end

  def columns
    count = rows[0].count
    arrays = Array.new(count){Array.new}
    rows.each do |row|
        acc = 0
      count.times do 
        arrays[acc] << row[acc]
        acc += 1
      end
    end
    arrays
  end
end