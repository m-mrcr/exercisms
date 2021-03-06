class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  {
    earth:   1.0,
    mercury: 0.2408467,
    venus:   0.61519726,
    mars:    1.8808158,
    jupiter: 11.862615,
    saturn:  29.447498,
    uranus:  84.016846,
    neptune: 164.79132
  }.each do |planet, earth_years|
    seconds_per_year = 31557600
    define_method :"on_#{planet}" do
      @seconds.fdiv(seconds_per_year * earth_years).round(2)
    end
  end
end