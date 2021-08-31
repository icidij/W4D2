class Piece
    attr_reader :color
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @opposite_color = opposite_color
  end

  def to_s
  end

  def moves(pos)
  end

  def opposite_color
    return "black" if @color == "white"
    return "white" if @color == "black"
    nil
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
    def at_start_row?
        return true if ((@color == "white") && (@pos[0] == 6)) || ((@color == "black") && (@pos[0] == 1))

        false
    end
    def forward_dir

        return -1 if @color == "white" 
        return 1 if @color == "black"

    end
    def forward_steps

        if at_start_row? 
            return 2 * forward_dir
        else
            return forward_dir
        end


    end
    def side_attacks
        left_attack = [@pos[0] + forward_dir, (@pos[1] - 1)]
        right_attack = [@pos[0] + forward_dir, (@pos[1] + 1)]
        options = []
        if @board[right_attack].color == @opposite_color
            options << right_attack
        elsif @board[left_attack].color == @opposite_color
            options << left_attack
        end
        options
    end

end
