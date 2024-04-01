class Piece
  attr_reader :color, :board

  attr_accessor :position # gives both reader and writer

def initialize(color, position, board)
  @color = color
  @position = position
  @board = board
  board.set_piece(self, position)
 end


 def display
  colorize_color = @color == 'white' ? :light_white : :light_black
  return "#{picture}".colorize(color: colorize_color)
  end

def valid_move?(to)
  to_row, to_column = to
  return false if to_row < 0 || to_row > 7
  return false if to_column < 0 || to_column > 7

  return false if position == to

  true
 end
end




