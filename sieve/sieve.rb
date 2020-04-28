require 'prime'

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    arr = []
    Prime.each(@num) {|prime| arr<<prime}
    arr
  end
end