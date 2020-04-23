class ArmstrongNumbers
  def self.include?(num)
    num1 = num.digits
    num1.sum { |d| d**num1.size } == num
  end
end