# Instructions

You are helping to build a safety check system for the upcoming manned flights to Mars. A final check is done of all the systems and teams, at `T-9 minutes and holding`. All teams participating in the launch must give a `Go` or `No-go` status. All teams must be in agreement to `Go` for the countdown and launch to proceed.

The teams have been structured like the Apollo launches:

- **BOOSTER** - Booster Systems Engineer
- **RETRO** - Retrofire Officer
- **FIDO** - Flight Dynamics Officer
- **GUIDANCE** - Guidance Officer
- **SURGEON** - Flight Surgeon
- **EECOM** - Electrical, Environmental, Consumables Management
- **GNC** - Guidance, Navigation, and Control Systems Engineer
- **TELMU** - Telemetry, Electrical, EVA Mobility Unit
- **CONTROL** - Flight Controller
- **PROCEDURES** - Procedures
- **INCO** - Integrated Communications Officer
- **FAO** - Flight Activities Officer
- **NETWORK** - Ground Station Communications
- **RECOVERY** - Recovery Supervisor
- **CAPCOM** - Capsule Communicator

Your task will require you to check that each team has weighed in, and given a `Go` for-launch.

## 1. Notify when a team hasn't checked in

Create an error appropriate for the launch-status check to raise when a team has not weighed in. It should be named ` LaunchStatusError`.

```ruby
raise LaunchStatusError, 'Launch flight team(s) have not given a go/no-go status.'
```

## 2. Notify when a no-go status is sent

Create an error appropriate for the launch-status check to raise when a team has weighed in with a `No-go` flight status. It should be named `AbortLaunchError`.

```ruby
raise AbortLaunchError, 'Launch flight team(s) have given a no-go status.'
```

## 3. Make sure that all teams are checked in

Complete the `initialize` and `all_teams_checked_in` methods. The `initialize` function receives an _array_ of _symbols_ with all of the team names. The `all_teams_checked_in` method receives a _hash_ that maps a team to a `:go` or `:no_go` symbol representing its status.

```ruby
checker = LaunchStatusCheck.new([:RETRO, :FIDO, :CAPCOM])
checker.all_teams_checked_in({RETRO: :go, FIDO: :no_go})
# => false
checker.all_teams_checked_in({RETRO: :go, FIDO: :no_go. CAPCOM: :go})
# => true
```

## 4. Make sure that all teams are go

Complete the `all_teams_are_go` method. It receives the same _hash_ as the `all_teams_checked_in` method, a mapping of teams to their `:go` or `:no_go` symbol status.

```ruby
checker = LaunchStatusCheck.new([:RETRO, :FIDO, :CAPCOM])
checker.all_teams_checked_in({RETRO: :go, FIDO: :no_go})
# => false
checker.all_teams_checked_in({RETRO: :go, FIDO: :go})
# => true
```

## 5. Putting it all together

Complete the `check` method. It receives the same _hash_ as the previous _two_ methods, a mapping of teams to their their `:go` or `:no_go` symbol status.

```ruby
checker = LaunchStatusCheck.new([:RETRO, :FIDO, :CAPCOM])

checker.check({RETRO: :go, FIDO: :no_go})
# => LaunchStatusError, 'Launch flight team(s) have not given a go/no-go status.'

checker.check({RETRO: :go, FIDO: :go, CAPCOM: :no_go})
# => AbortLaunchError, 'Launch flight team(s) have given a no-go status.'

checker.check({RETRO: :go, FIDO: :go, CAPCOM: :go})
# => nil
```
