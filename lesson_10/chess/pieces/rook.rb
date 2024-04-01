require_relative "piece"

class Rook < Piece
   def picture
    " \u265C "
  end

  def valid_move?(to) #, 70, 60, Board.new
   return false unless super

   from_row, from_column = position
   to_row, to_column = to

   return false unless from_row == to_row || from_column == to_row


   # if it is moving straight we should return true
   # return false if it's not moving like a rook should
   # otherwise if move is valid, return true
   true
  end
end
