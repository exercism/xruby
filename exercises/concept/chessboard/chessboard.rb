module Chessboard
  def self.rank_range
    raise NotImplementedError, 'Please implement the Chessboard#rank_range method'
  end

  def self.file_range
    raise NotImplementedError, 'Please implement the Chessboard#file_range method'
  end

  def self.ranks
    raise NotImplementedError, 'Please implement the Chessboard#ranks method'
  end

  def self.files
    raise NotImplementedError, 'Please implement the Chessboard#files method'
  end
end
