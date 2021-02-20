# Instructions

In this exercise you'll be playing around with a remote controlled car, which you've finally saved enough money for to buy.

Cars start with full (100%) batteries. Each time you drive the car using the remote control, it covers 20 meters and drains one percent of the battery. The car's nickname is not known until it is created.

The remote controlled car has a fancy LED display that shows two bits of information:

- The total distance it has driven, displayed as: `"<METERS> meters"`.
- The remaining battery charge, displayed as: `"Battery at <PERCENTAGE>%"`.

If the battery is at 0%, you can't drive the car anymore and the battery display will show `"Battery empty"`.

## 1. Create a brand-new remote controlled car

Implement the `RemoteControlCar#initialize` method to initialize a new instance of a RemoteControlCar. It should initialize some class instance variables to their starting values.

```ruby
RemoteControlCar.new("Bill")
# => #<RemoteControlCar:0x00005561a540d060 @nickname="Bill", @distance_driven=0, @battery_percentage=100>
```

The nickname is required by the class, make sure that a value is initialized.

## 2. Read the properties of the class instance

Make the class variables accessible to external calls:

```ruby
car = RemoteControlCar.new("Bill")
car.distance_driven # => 0
car.battery_percentage # => 100
```

## 3. Display the distance

Implement the `RemoteControlCar#display_distance` method to return the distance as displayed on the LED display:

```ruby
car = RemoteControlCar.new
car.display_distance
# => "0 meters"
```

## 4. Display the battery percentage

Implement the `RemoteControlCar#display_battery` method to return the distance as displayed on the LED display:

```ruby
car = RemoteControlCar.new
car.display_battery
# => "Battery at 100%"
```

## 5. Driving changes the battery and distance driven

Implement the `RemoteControlCar#drive` method that:

- updates the number of meters driven by 20
- drains 1% of the battery

```ruby
car = RemoteControlCar.new("Red")
car.drive
car.display_distance # => "20 meters"
car.display_battery # => "Battery at 99%"
```

## 6. Account for driving with a dead battery

Update the `RemoteControlCar#drive` method to not increase the distance driven nor decrease the battery percentage when the battery is drained (at 0%):

```ruby
car = RemoteControlCar.new("Blue")

# drive 100 times
100.times { car.drive }

car.display_distance # => "2000 meters"
car.display_battery # => "Battery at 0%"

# drive once more
car.drive

car.display_distance # => "2000 meters"
car.display_battery # => "Battery at 0%"
```
