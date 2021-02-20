# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'remote_control_car'

class RemoteControlCarTest < Minitest::Test
  def test_new_doesnt_error
    RemoteControlCar.new("test_car")
  end

  def test_new_car_has_nickname
    car = RemoteControlCar.new("test_car")
    assert_equal "test_car", car.nickname
  end

  def test_required_key_nickname_should_not_have_default
    assert_raises(ArgumentError) do
      RemoteControlCar.new
    end
  end

  def test_new_car_hasnt_been_driven
    car = RemoteControlCar.new("test_car")
    assert_equal 0, car.distance_driven
  end

  def test_new_car_has_full_battery
    car = RemoteControlCar.new("test_car")
    assert_equal 100, car.battery_percentage
  end

  def test_display_distance_driven
    car = RemoteControlCar.new("test_car")
    assert_equal "0 meters", car.display_distance
  end

  def test_display_battery_percentage
    car = RemoteControlCar.new("test_car")
    assert_equal "Battery at 100%", car.display_battery
  end

  def test_drive_car
    car = RemoteControlCar.new("test_car")
    car.drive
    assert_equal 20, car.distance_driven
    assert_equal 99, car.battery_percentage
    assert_equal "20 meters", car.display_distance
    assert_equal "Battery at 99%", car.display_battery
  end

  def test_drive_car_to_half
    car = RemoteControlCar.new("test_car")
    50.times { car.drive }
    assert_equal 1000, car.distance_driven
    assert_equal 50, car.battery_percentage
    assert_equal "1000 meters", car.display_distance
    assert_equal "Battery at 50%", car.display_battery
  end

  def test_drive_car_to_empty
    car = RemoteControlCar.new("test_car")
    100.times { car.drive }
    assert_equal 2000, car.distance_driven
    assert_equal 0, car.battery_percentage
    assert_equal "2000 meters", car.display_distance
    assert_equal "Battery empty", car.display_battery
  end

  def test_drive_car_after_empty
    car = RemoteControlCar.new("test_car")
    101.times { car.drive }
    assert_equal 2000, car.distance_driven
    assert_equal 0, car.battery_percentage
    assert_equal "2000 meters", car.display_distance
    assert_equal "Battery empty", car.display_battery
  end
end
