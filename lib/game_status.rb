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
		index1 = combo[0]
		index2 = combo[1]
		index3 = combo[2]
		position_1 = board[index1] # load the value of the board at win_index_1
	 	position_2 = board[index2] # load the value of the board at win_index_2
	 	position_3 = board[index3] # load the value of the board at win_index_3

	 	if position_1 == "X" && position_2 == "X" && position_3 == "X"
	   		return combo # return the win_combination indexes that won.
		else
			false
	  	end
		if position_1 == "O" && position_2 == "O" && position_3 == "O"
			return combo # return the win_combination indexes that won.
		else
			false
		end
	end
end

def winner(board)
	if won?(board)
		combo = won?(board)
		return board[combo[0]]
	else
		nil
	end
end

def over?(board)
	if won?(board)
		true
	elsif draw?(board)
		true
	elsif full?(board)
		true
	else
		false
	end
end

def draw?(board)
	if full?(board)
		if !won?(board)
			true
		end
	else
		false
	end
end

def full?(board)
	if board.any?{ |index| board[index] = ""} == true
		false
	else
		true
	end
end
