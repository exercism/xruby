module Chessboard
  def self.rank_range
    1..8
  end

  def self.file_range
    "A".."H"
  end

  def self.ranks
    rank_range.to_a
  end

  def self.files
    file_range.to_a
  end
end
