# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = 
  [[0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [6, 4, 2],
  [0, 4, 8]]
  
  
def won?(board)
  WIN_COMBINATIONS.each { |possible_wins|
    win_index0 = possible_wins[0]
    win_index1 = possible_wins[1]
    win_index2 = possible_wins[2]

    position_1 = board[win_index0]
    position_2 = board[win_index1]
    position_3 = board[win_index2]
  
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return possible_wins
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
     return possible_wins 
    end }
  return nil
end


def full?(board)
  if board.detect { |i| i == " " || i == false }
    return false
  else
    return true
  end
end


def draw?(board)
  if full?(board) && !won?(board)
    return true
  else 
    return false
  end
end


def over?(board)
  if full?(board) || draw?(board) || won?(board)
    return true
  else 
    return false
  end
end


def winner(board)
  index = []
  index = won?(board)
  if index == nil
    return false
  else 
    if board[index[0]] == "X"
      return "X"
    else 
      return "O"
    end
  end
end