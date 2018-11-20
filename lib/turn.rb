#accepts a board array and prints to console
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts users input to an integer
def input_to_index(input)
  input = input.strip.to_i
  input - 1
end

#returns true if move is valid, false if not
 


#returns true if position taken, false if position is free
def position_taken?(board, index)
  !(board[index] ="" || board[index] = " " || board[index] = nil)
end
