# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
 		WIN_COMBINATIONS.each do |combo|
			if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
	   			return combo # return the win_combination indexes that won.
			else
				nil
	  		end
	end
end

def winner(board)
	if won?(board)
		combo = won?(board)
		board[combo[0]]
	end
end

def over?(board)
	won?(board) ||  draw?(board) || full?(board)

end

def draw?(board)
	full?(board) && !won?(board)
end

def full?(board)
	board.all?{ |index| index == "X" || index == "O" }
end
