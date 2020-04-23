class ArmstrongNumbers
  def self.include?(num)
    nums = num.digits
    nums.sum { |d| d**nums.size } == num
  end
end