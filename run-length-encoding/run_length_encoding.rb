class RunLengthEncoding
  def self.encode input
    pairs = input.split('').map.with_object([]) do | char, obj |
      obj << [0, char] if obj.empty?
      obj.last[1] == char ? obj.last[0] += 1 : obj << [1, char]
    end
    pairs.map {|p| p.delete_at(0) if p[0] == 1}
    pairs.join
  end

  def self.decode input
    arr = []
    str = ''
    input.split('').each do |char|
      if !char.match(/\A[[:alpha:][:blank:]]+\z/)
        str += char
      else
        arr << str
        arr << char
        str = ''
      end      
    end
    arr.each_slice(2).to_a.map do |p|
      !!(p[0].match(/^(\d)+$/)) ? p[1] * p[0].to_i : p[1]
    end.join
  end
end