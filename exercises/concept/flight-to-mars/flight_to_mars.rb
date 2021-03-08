# frozen_string_literal: true

class LaunchStatusCheck
  # create a custom `LaunchStatusError` error

  # create a custom `AbortLaunchError` error

  def initialize(flight_teams)
    raise NotImplementedError, 'Please implement the LaunchStatusCheck#initialize method'
  end

  def all_teams_checked_in(status_checks)
    raise NotImplementedError, 'Please implement the LaunchStatusCheck#all_teams_checked_in method'
  end

  def all_teams_are_go(status_checks)
    raise NotImplementedError, 'Please implement the LaunchStatusCheck#all_teams_are_go method'
  end

  def check(status_checks)
    raise NotImplementedError, 'Please implement the LaunchStatusCheck#check method'
  end
end
