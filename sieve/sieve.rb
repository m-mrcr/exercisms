require 'prime'

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    @num > 1 ? Prime.each(@num).with_object([]) {|prime, obj| obj << prime} : []
  end
end