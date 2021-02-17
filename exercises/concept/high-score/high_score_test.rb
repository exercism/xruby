require 'minitest/autorun'
require_relative '.meta/exemplar'

class HighScoreTest < Minitest::Test
  def test_blank
    expected = {}
    scoreboard = Scoreboard.new
    assert_equal [], scoreboard.players
  end

  def test_initial_state
    player = 'Billy'
    score = 7
    scoreboard = Scoreboard.new(player => score)

    assert_equal [player], scoreboard.players
    assert_equal score, scoreboard.player_score(player)
  end

  def test_add_player
    player = 'Billy'
    score = 7
    scoreboard = Scoreboard.new
    scoreboard.add_player(player, score)

    assert_equal [player], scoreboard.players
    assert_equal score, scoreboard.player_score(player)
  end

  def test_remove_player
    player = 'Joel'
    scoreboard = Scoreboard.new(player => 45)
    scoreboard.remove_player(player)
    assert_equal [], scoreboard.players
  end

  def test_reset_player
    player = 'Barry'
    scoreboard = Scoreboard.new(player => 765)

    scoreboard.reset_player_score(player)
    assert_equal 0, scoreboard.player_score(player)
  end

  def test_update_player
    player = 'Jerry'
    scoreboard = Scoreboard.new(player => 834)
    scoreboard.update_player_score(player, 33)

    expected = { player => 867 }
    assert_equal 867, scoreboard.player_score(player)
  end

  def test_get_players
    scores = { 'Ted' => 34, 'Hassan' => 50, 'Pierre' => 20 }
    assert_equal %w[Ted Hassan Pierre], Scoreboard.new(scores).players
  end
end
