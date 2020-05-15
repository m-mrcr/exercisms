class PrimeFactors
  def self.of limit
    factors = []
    prime = 2

    while prime <= limit
      if limit % prime == 0
        limit /= prime
        factors << prime
      else
        prime += 1
      end
    end
    factors
  end
end