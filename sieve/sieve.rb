require 'prime'

class Sieve
  def initialize(num)
    @num = num
    @primes = []
  end

  def primes
    Prime.each(@num) {|prime| @primes << prime}
    @primes
  end
end