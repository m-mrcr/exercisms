class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    set = (2..@limit).to_a
    set.each { |p| p.upto(@limit) { |n| set.delete(p * n) } }
  end
end


