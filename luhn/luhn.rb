class Luhn
  def self.valid?(str)
    return false unless str.match?(/^[\d ]*$/) && str.gsub(/\D/, '').length > 1
    num = str.delete('^0-9')
          .chars
          .reverse
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