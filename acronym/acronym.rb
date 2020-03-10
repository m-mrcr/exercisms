class Acronym
  def self.abbreviate(term)
    acronym = ''
    words = term.gsub(/[^a-zA-Z ]/, ' ')
    words.split(' ').map {|word| acronym<<word[0].upcase}
    acronym
  end

#   def self.abbreviate(term)
#     term.split(/\W/).map(&:chr).join.upcase
#   end
end

