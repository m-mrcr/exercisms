module Reaction
  def silence(str); str.strip.empty? end
  def query(str); str.strip[-1] == "?" end
  def loud(str); no_lower(str) && all_upper(str) end
  def panic(str); loud(str) && query(str) end
  
  private 
  def no_lower(str); str.count("a-z") == 0 end
  def all_upper(str); str.count("A-Z") > 0 end
end

class Bob 
  extend Reaction   
  def self.hey remark
    return "Fine. Be that way!" if silence(remark)
    return "Calm down, I know what I'm doing!" if panic(remark)
    return "Whoa, chill out!" if loud(remark)
    return "Sure." if query(remark)
    return "Whatever." 
  end
end