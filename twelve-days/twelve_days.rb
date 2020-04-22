class TwelveDays
   ORDINALS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth]
    GIFTS = ["and a Partridge in a Pear Tree.",
            "two Turtle Doves, ",
            "three French Hens, ",
            "four Calling Birds, ",
            "five Gold Rings, ",
            "six Geese-a-Laying, ",
            "seven Swans-a-Swimming, ",
            "eight Maids-a-Milking, ",
            "nine Ladies Dancing, ",
            "ten Lords-a-Leaping, ",
            "eleven Pipers Piping, ",
            "twelve Drummers Drumming, "]
  
  def self.intro(index)
    "On the #{index} day of Christmas my true love gave to me: "
  end

  def self.gift(index)
    str = ""
    GIFTS[0..index].reverse.each {|gift| str += gift}
    str.slice!("and ") if str == GIFTS[0] && index == 0
    str
  end

  def self.line_break(index)
    index < 11 ? "\n\n" : "\n" 
  end

  def self.song
    str = ""
    ORDINALS.each_with_index {|day, index| str += (intro(day) + gift(index) + line_break(index))}
    return str
  end
end