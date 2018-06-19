def turn
  puts "Where would you like to go?"

  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    until valid_move?(board,index)
      puts "That is an invalid move, please try again"
      display_board(board)
      input=gets.strip
      index=input_to_index(input)
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index=input.to_i - 1
end

def move(board,index,player="X")
  board[index]=player
end

# code your #valid_move? method here
def valid_move?(board,index)
  if (! (position_taken?(board,index)) && index.between?(0,8))
    true
  else false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
    else true
  end
end
