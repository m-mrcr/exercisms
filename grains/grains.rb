module Grains
  module_function

  SQUARES = (2..64).map.with_object({1=>1}) {|n, h| h[n] = h[n-1] * 2}

  def square(num)
    SQUARES[num] ? SQUARES[num] : raise(ArgumentError)
  end

  def total
    SQUARES.values.sum
  end
end
