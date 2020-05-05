module Message
  def no_lower(str); str.count("a-z") == 0 end
  def all_upper(str); str.count("A-Z") > 0 end
  
  def query(str); str.strip[-1] == "?" end
  def silence(str); str =~ /^[\s]+$/ || str.empty? end
  def panic(str); no_lower(str) && all_upper(str) && query(str) end
  def shout(str); no_lower(str) && all_upper(str) && !query(str) end
end

class Bob 
  extend Message   
  def self.hey remark
    if silence(remark)
      return "Fine. Be that way!"
    elsif panic(remark)
      return "Calm down, I know what I'm doing!" 
    elsif shout(remark)
      return "Whoa, chill out!"
    elsif query(remark)
      return "Sure."
    else
      return "Whatever." 
    end
  end
end