class RunLengthEncoding
  def self.encode input
    step1 = input.split('').map.with_object([]) do | char, obj |
      obj << [0, char] if obj.empty?
      if obj.last[1] == char
        obj.last[0] += 1
      else
        obj << [1, char]
      end
    end
    step1.map {|p| p.delete_at(0) if p[0] == 1}
    step1.join
  end
end