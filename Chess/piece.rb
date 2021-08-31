class Piece
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def moves(pos)
  end
end


class Pawn < Piece
  
    def initialize(color, board, pos)
        super
        @symbol = "P"
    end

    def symbol
        @symbol
    end

    def move_dirs
        @pos

    end

    private

end
