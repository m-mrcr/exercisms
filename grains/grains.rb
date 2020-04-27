class Grains
  def self.square(num)
    (1..64).include?(num) ? 2**(num-1) : raise(ArgumentError)
  end

  def self.total
    2**64 - 1
  end
end
