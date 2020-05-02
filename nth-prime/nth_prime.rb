class Prime
  def self.nth n
    raise ArgumentError if n.zero?
    limit = n * 20
    primes = [nil, nil, *2..limit]
    prime_count = 0
    (2..Math.sqrt(limit)).each do |i|
      if primes[i]
        ((i+i)..limit).step(i) { |j| primes[j] = nil }
        prime_count += 1
      end
      break if prime_count == n
    end
    primes.compact.at(n-1) 
  end
end