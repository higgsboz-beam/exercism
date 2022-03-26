class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = @speed * 221
    case @speed
    when 1..4
      rate *= 1
    when 5..8
      rate *= 0.9
    when 9
      rate *= 0.8
    when 10
      rate *= 0.77
    else
      raise ArgumentError
    end
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / 60
  end
end
