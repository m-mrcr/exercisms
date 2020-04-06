# class Hamming
#   def self.compute(a, b)
#     if a.length == b.length
#       first = a.split('')
#       second = b.split('')
#       first.zip(second).inject(0) do |diff, pair| 
#         pair.uniq.length != 1 ? diff += 1 : diff 
#       end
#     else
#       raise ArgumentError
#     end
#   end
# end

class Hamming
  def self.compute(a, b)
    raise ArgumentError if a.size != b.size
    (0...a.size).count { |i| a[i] != b[i] }
  end
end