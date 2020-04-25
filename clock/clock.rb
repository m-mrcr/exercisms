class Clock     
  attr_reader :total_minutes
  
  def initialize(hour: 0, minute: 0)
    @total_minutes = hour * 60 + minute
  end

  def to_s
   "%02i:%02i" % [*time]
  end   

  def time
    [total_hours, remaining_minutes]
  end 

  def total_hours
    (total_minutes / 60) % 24
  end 

  def remaining_minutes
    total_minutes % 60
  end 

  def +(other_clock)
    apply(:+, other_clock)
  end 

  def -(other_clock)
    apply(:-, other_clock)
  end 

  def apply(original_clock, other_clock)
    @total_minutes = total_minutes.send(original_clock, other_clock.total_minutes)
    self
  end 

  def ==(other_clock)
   to_s == other_clock.to_s
  end
end

