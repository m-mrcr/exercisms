class SumOfMultiples
  def initialize *multiples
    @multiples = multiples
  end

  def to max
    charles = (1...max).to_a.map do |n|
      @multiples.map {|m| n if n % m == 0}
    end.flatten.compact.uniq.sum
  end
end