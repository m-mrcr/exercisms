class Array
  def keep
    self.empty? ? [] : self.map {|obj| obj if yield(obj)}.compact
  end

  def discard
    self.empty? ? [] : self.map {|obj| obj unless yield(obj)}.compact
  end
end