class SumOfMultiples
  def initialize *factors
    @factors = factors
  end

  def to max
    @factors.flat_map do |m| 
      (1...max).to_a.map {|n| n if n % m == 0}
    end.compact.uniq.sum
  end
end