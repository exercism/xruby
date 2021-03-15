# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lucas_numbers'

class LasagnaTest < Minitest::Test
  def test_sequence_is_an_enumerator
    assert_instance_of Enumerator, LucasNumbers.new.sequence
  end

  def test_sequence_first_number
    assert_equal 2, LucasNumbers.new.sequence.next
  end

  def test_sequence_second_number
    lucas_numbers = LucasNumbers.new
    lucas_numbers.sequence.next

    assert_equal 1, lucas_numbers.sequence.next
  end

  def test_sequence_third_number
    lucas_numbers = LucasNumbers.new
    2.times { lucas_numbers.sequence.next }

    assert_equal 3, lucas_numbers.sequence.next
  end

  def test_sequence_fourth_number
    lucas_numbers = LucasNumbers.new
    3.times { lucas_numbers.sequence.next }

    assert_equal 4, lucas_numbers.sequence.next
  end

  def test_sequence_fifth_number
    lucas_numbers = LucasNumbers.new
    4.times { lucas_numbers.sequence.next }

    assert_equal 7, lucas_numbers.sequence.next
  end

  def test_sequence_sixth_number
    lucas_numbers = LucasNumbers.new
    5.times { lucas_numbers.sequence.next }

    assert_equal 11, lucas_numbers.sequence.next
  end

  def test_sequence_seventh_number
    lucas_numbers = LucasNumbers.new
    6.times { lucas_numbers.sequence.next }

    assert_equal 18, lucas_numbers.sequence.next
  end

  def test_sequence_eighth_number
    lucas_numbers = LucasNumbers.new
    7.times { lucas_numbers.sequence.next }

    assert_equal 29, lucas_numbers.sequence.next
  end

  def test_sequence_ninth_number
    lucas_numbers = LucasNumbers.new
    8.times { lucas_numbers.sequence.next }

    assert_equal 47, lucas_numbers.sequence.next
  end

  def test_sequence_tenth_number
    lucas_numbers = LucasNumbers.new
    9.times { lucas_numbers.sequence.next }

    assert_equal 76, lucas_numbers.sequence.next
  end

  def test_to_a
    assert_equal(
      [2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123, 199, 322, 521, 843, 1364, 2207, 3571, 5778, 9349, 15127, 24476, 39603, 64079, 103682, 167761, 271443, 439204, 710647, 1149851],
      LucasNumbers.new.to_a(30)
    )
  end

  def test_to_a_fails_with_invalid_integer
    err =
      assert_raises ArgumentError do
        LucasNumbers.new.to_a(-1)
      end

    assert_match "count must be a number greater than or equal to 0", err.message
  end

  def test_to_a_fails_with_non_integer
    err =
      assert_raises ArgumentError do
        LucasNumbers.new.to_a("a")
      end

    assert_match "count must be a number greater than or equal to 0", err.message
  end
end
