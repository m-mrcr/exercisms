class Clock
  def initialize(hour: 0, minute: 0)
    @var = hour * 60 + minute
  end

  def to_s(hour, minute)
    t = ((hour*60)+(minute))*60
    return Time.at(t).utc.strftime("%H:%M")
  end
    
end

