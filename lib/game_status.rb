
 require 'pry'

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS = [
 [0,1,2],
 [3,4,5],
 [6,7,8],
 [0,3,6],
 [1,4,7],
 [2,5,8],
 [2,4,6],
 [0,4,8]
 ]



def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])
end
  end


  def full?(board)
    WIN_COMBINATIONS.detect do |full|
      board[full[0]] != board[full[1]] && board[full[1]] != board[full[2]] && position_taken?(board, full[0])
  binding.pry
      end
    end
