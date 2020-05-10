class Array
  def accumulate
    self.each.with_object([]) do |item, obj|
      block_given? ? obj.push(yield(item)) : obj.push(item)
    end
  end
end