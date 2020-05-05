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


# Bob answers 'Sure.' if you ask him a question.

# He answers 'Whoa, chill out!' if you yell at him.

# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

# He says 'Fine. Be that way!' if you address him without actually saying
# anything.

# He answers 'Whatever.' to anything else.

# Bob's conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.
