# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = Array.new(9) { Array.new(9, 0) }
  columns = Array.new(9) { Array.new(9, 0) }
  subboxes = Array.new(3) { Array.new(3) { Array.new(9, 0) } }
  (0...9).each do |i|
    (0...9).each do |j|
      c = board[i][j]
      if c != "."
        index = c.ord - "0".ord - 1
        rows[i][index] += 1
        columns[j][index] += 1
        subboxes[i / 3][j / 3][index] += 1
        if rows[i][index] > 1 || columns[j][index] > 1 || subboxes[i / 3][j / 3][index] > 1
          return false
        end
      end
    end
  end
  return true
end
