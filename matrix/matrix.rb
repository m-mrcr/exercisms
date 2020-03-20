# class Matrix
#   def initialize(input)
#       @input = input
#   end

#   def rows
#     @input.split("\n").map {|n| n.split(' ').map(&:to_i)}
#   end

#   def columns
#     count = rows[0].count
#     arrays = Array.new(count){Array.new}
#     rows.each do |row|
#         acc = 0
#       count.times do 
#         arrays[acc] << row[acc]
#         acc += 1
#       end
#     end
#     arrays
#   end
# end

class Matrix
  attr_reader :rows, :columns

  def initialize(rep)
    @rows = rep.each_line.map { |x| x.split.map(&:to_i) }
    @columns = @rows.transpose
  end
end