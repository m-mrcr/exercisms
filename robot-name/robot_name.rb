class Robot
  NAMES = []
  
  def new
    @name = nil
  end

  def name
    return @name unless @name == nil
    loop do
      @name = (1..2).map { (65 + rand(26)).chr }.join + '%03d' % rand(999)
      break if !NAMES.include?(@name)
    end
    NAMES << @name
    @name
  end

  def self.forget
    NAMES.clear()
  end

  def reset
    @name = nil
  end
end
