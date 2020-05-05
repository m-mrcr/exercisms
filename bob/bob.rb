class Bob      
  def self.hey remark
    if remark =~ /^[\s]+$/ || remark.empty?
      return "Fine. Be that way!"
    elsif remark.count("a-z") == 0 && remark.count("A-Z") > 0 && remark[-1] == "?"
      return "Calm down, I know what I'm doing!" 
    elsif remark.count("a-z") == 0 && remark.count("A-Z") > 0 && remark[-1] != "?"
      return "Whoa, chill out!"
    elsif remark.delete(" ")[-1] == "?"
      return "Sure."
    else
      return "Whatever." 
    end
  end
end