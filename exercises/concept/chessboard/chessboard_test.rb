# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'chessboard.rb'

class ChessboardTest < Minitest::Test
  def test_rank_range_is_a_range_of_integers
    assert_equal 1..8, Chessboard.rank_range
  end

  def test_file_range_is_a_range_of_letters
    assert_equal ?A..?H, Chessboard.file_range
  end

  def test_ranks_is_a_array_of_integers
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8], Chessboard.ranks
  end

  def test_files_is_a_array_of_letters_strings
    assert_equal %w[A B C D E F G H], Chessboard.files
  end
end