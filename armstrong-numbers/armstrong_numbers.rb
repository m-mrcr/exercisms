class ArmstrongNumbers
  def self.include?(num)
    num
      .digits
      .inject(0) {|sum, n| sum += n**num.digits.count}
      .eql?(num)
  end
end