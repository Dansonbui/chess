 require_relative "piece"

 class Pawn < Piece
 def picture
    return " \u265F "
  end

 def valid_move?(to)
  return false unless super

  from_row, from_column = position
  to_row, to_column = to

  return true if from_row + direction == to_row && from_column == to_column
  moving_diagonally = from_row + direction == to_row && (from_column + 1 == to_column || from_column -1 == to_column)
  piece = board.get_piece(to)

  return true if moving_diagonally && !piece.nil? && piece.color != @color

  false
 end

 def is_attacking?
  coord_row, coord_column = position

    piece_1 = board.get_piece([coord_row + direction,coord_column + 1])
    piece_2 = board.get_piece([coord_row + direction,coord_column - 1])

    return true if !piece_1.nil? && piece_1.class == King && piece_1.color != @color
    return true if !piece_2.nil? && piece_2.class == King && piece_2.color != @color

   false
  end

def direction
  @color == "white" ? -1 : 1
  end
end