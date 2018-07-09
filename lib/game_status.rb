
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
    board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] ==
    board[win_combo[2]] && position_taken?(board, win_combo[0])
    end
  end


  def full?(board)
  index.find do |full|
      index[full] != position_taken?(board, index)
    end
    end

    def draw?(board)
      WIN_COMBINATIONS.detect do |draw|
        board[draw[0]] != board[draw[1]] && board[draw[1]] != board[draw[2]] && position_taken?(board, draw[0])
  end
      end
