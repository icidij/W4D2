require_relative "piece"

class Board
    attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
    add_all_pieces
  end

  def add_all_pieces
    @board.each_with_index do |row, i|
      row.each_with_index do |space, j|
        if i < 2
          @board[i][j] = Piece.new("black", @board, [i, j])
        elsif i > 5
          @board[i][j] = Piece.new("white", @board, [i, j])
        else
          @board[i][j] = Piece.new("null", @board, [i, j])
        end
      end
    end
  end
end
