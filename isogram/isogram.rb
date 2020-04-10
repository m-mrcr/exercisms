class Isogram
  def self.isogram?(input)
    scan = input.downcase.scan(/[a-z]/i)
    scan.length == scan.uniq.length
  end
end
