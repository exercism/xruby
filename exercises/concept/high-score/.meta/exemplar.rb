class Scoreboard
  INITIAL_SCORE = 0

  def initialize(initial_scores = {})
    @scores = initial_scores
  end

  def add_player(name, initial_score = INITIAL_SCORE)
    @scores[name] = initial_score
  end

  def remove_player(name)
    @scores.delete(name)
  end

  def reset_player_score(name)
    @scores[name] = INITIAL_SCORE
  end

  def update_player_score(name, score)
    @scores[name] += score
  end

  def player_score(name)
    @scores[name]
  end

  def players
    @scores.keys
  end
end
