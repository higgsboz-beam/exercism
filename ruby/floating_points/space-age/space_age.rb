=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge

  PLANET_SECONDS = {
    "mercury" => 0.2408467 * 31557600,
    "venus" => 0.61519726 * 31557600,
    "earth" => 1.0 * 31557600,
    "mars" => 1.8808158 * 31557600,
    "jupiter" => 11.862615 * 31557600,
    "saturn" => 29.447498 * 31557600,
    "uranus" => 84.016846 * 31557600,
    "neptune" => 164.79132 * 31557600,
  }

  def initialize(seconds)
    @seconds = seconds
  end

  def on_mercury
    @seconds / PLANET_SECONDS["mercury"]
  end

  def on_venus
    @seconds / PLANET_SECONDS["venus"]
  end

  def on_earth
    @seconds / PLANET_SECONDS["earth"]
  end

  def on_mars
    @seconds / PLANET_SECONDS["mars"]
  end

  def on_jupiter
    @seconds / PLANET_SECONDS["jupiter"]
  end

  def on_saturn
    @seconds / PLANET_SECONDS["saturn"]
  end

  def on_uranus
    @seconds / PLANET_SECONDS["uranus"]
  end

  def on_neptune
    @seconds / PLANET_SECONDS["neptune"]
  end

end