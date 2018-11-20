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
  input = input.to_i
  input - 1
end

#returns true if move is valid (within range and unoccupied), false if not
def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

#returns true if position taken, false if position is free
def position_taken?(board, index)
  !(board[index] == "" || board[index] == " " || board[index] == nil)
end

#add a new token to the board as long as the move is valid
def move(board, index, token="X")
  if valid_move?(board, index)
    board[index] = token
  else
    print "invalid move"
  end
end

#handles logic for turns
def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  if valid_move?(board, input_to_index(index))
    move(board, index)
  else
    turn(board)
  end
end
