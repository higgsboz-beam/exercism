
class Clock
  def initialize(hour = 0, minute = 0)
    @hour = hour % 24
    @minute = minute % 60
  end

  def ==(o)
    o.class == self.class && o.state == self.state
  end

  def state
    self.instance_variables.map { |variable| self.instance_variable_get variable }
  end

  def self.to_s
    return "#{@hour}:#{minute}"
  end

end