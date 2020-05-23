class SpaceAge
  def initialize seconds
    @seconds = seconds
  end

  def on_earth() (@seconds/earth_year_in_seconds).round(2) end
  def on_mercury() (on_earth/relative_to[:Mercury]).round(2) end
  def on_venus() (on_earth/relative_to[:Venus]).round(2) end
  def on_mars() (on_earth/relative_to[:Mars]).round(2) end
  def on_jupiter() (on_earth/relative_to[:Jupiter]).round(2) end
  def on_saturn() (on_earth/relative_to[:Saturn]).round(2) end
  def on_uranus() (on_earth/relative_to[:Uranus]).round(2) end
  def on_neptune() (on_earth/relative_to[:Neptune]).round(2) end

  private

  def relative_to
  { Mercury: 0.2408467,
    Venus: 0.61519726,
    Mars: 1.8808158,
    Jupiter: 11.862615,
    Saturn: 29.447498,
    Uranus: 84.016846,
    Neptune: 164.79132 }
  end

  def earth_year_in_seconds
    31557600.0
  end
end