class Series
  def initialize(string)
    @string=string
  end

  def slices(count)
    raise ArgumentError if count > @string.length
    @string.each_char.each_cons(count).map(&:join)
  end
end