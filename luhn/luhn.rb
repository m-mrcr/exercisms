class Luhn
  def self.valid?(num)
    return false unless num.match?(/^[0-9 ]*$/) && num.gsub(/\s*/, '').length > 1
    
    num = num.gsub(/\s*/, '')
          .chars
          .reverse
          .each
          .each_with_index
          .reduce(0) do |acc, (val, i)| 
            i.odd? ? acc += double(val.to_i) : acc += val.to_i
          end
    num % 10 == 0
  end

  def self.double(num)
    num += num
    num > 9 ? num - 9 : num
  end
end

# class Luhn
#   def self.valid?(str)
#     str
#       .gsub(" ", '')
#       .tap {|s| return false unless s[/\A\d\d+\Z/]}
#       .chars
#       .reverse
#       .map.with_index {|val, i| i.odd? ? val.to_i * 2 : val.to_i}
#       .map {|val| val > 9 ? val - 9 : val}
#       .sum % 10 == 0
#   end
# end