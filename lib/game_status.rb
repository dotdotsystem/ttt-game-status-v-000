def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
 require 'pry'

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

 def full?(board)
      WIN_COMBINATIONS.all? do |full|
        board[full] == position_taken?(board, index)
    end
  end


def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])

    end
  end
