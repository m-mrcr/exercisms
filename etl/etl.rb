class ETL
  def self.transform input
    input.map.with_object({}) do |(score, letters), hash|
      letters.each {|letter| hash[letter.downcase] = score}
    end
  end
end