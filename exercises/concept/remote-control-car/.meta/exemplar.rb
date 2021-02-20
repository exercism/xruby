class RemoteControlCar
  attr_reader :nickname, :battery_percentage, :distance_driven

  def initialize(nickname)
    @nickname = nickname
    @distance_driven = 0
    @battery_percentage = 100
  end

  def display_distance
    "#{distance_driven} meters"
  end

  def display_battery
    return "Battery empty" if battery_percentage.zero?

    "Battery at #{battery_percentage}%"
  end

  def drive
    return if battery_percentage.zero?

    @battery_percentage -= 1
    @distance_driven += 20
  end
end
