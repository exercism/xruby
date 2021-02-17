class Scoreboard
  def initialize(initial_scores)
    raise NotImplementedError, 'Please implement the Scoreboard#initialize method'
  end

  def players
    raise NotImplementedError, 'Please implement the Scoreboard#players method'
  end

  def add_player(name, initial_score)
    raise NotImplementedError, 'Please implement the Scoreboard#add_player method'
  end

  def remove_player(name)
    raise NotImplementedError, 'Please implement the Scoreboard#remove_player method'
  end

  def reset_player_score(name)
    raise NotImplementedError, 'Please implement the Scoreboard#reset_player_score method'
  end

  def update_player_score(name, score)
    raise NotImplementedError, 'Please implement the Scoreboard#update_player_score method'
  end

  def player_score(name)
    raise NotImplementedError, 'Please implement the Scoreboard#player_score method'
  end
end

