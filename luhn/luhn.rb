class Luhn
  def self.valid?(num)
    process(num) if num.match?(/^[0-9 ]*$/) && num.scan(/\d/).count > 1
  end

  def self.process(num)
    num = num.gsub(/\s*/, '')
          .split('')
          .reverse
          .each_with_index
          .map {|val, i| i.odd? ? double(val) : val.to_i}
          .sum
    num % 10 == 0
  end

  def self.double(num)
    double = num.to_i * 2
    double > 9 ? double - 9 : double
  end
end