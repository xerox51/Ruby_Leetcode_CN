# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
  def dfs(pos)
    @valid
    if pos == @spaces.length
      @valid = true
      return
    end
    i, j = @spaces[pos]
    (0...9).each do |digit|
      if @line[i][digit] == @column[j][digit] && @block[i / 3][j / 3][digit] == false && @column[j][digit] == @block[i / 3][j / 3][digit]
        @line[i][digit] = @column[j][digit] = @block[i / 3][j / 3][digit] = true
        @board[i][j] = (digit + 1).to_s
        dfs(pos + 1)
        @line[i][digit] = @column[j][digit] = @block[i / 3][j / 3][digit] = false
      end
      if @valid
        return
      end
    end
  end

  @line = Array.new(9) { Array.new(9, false) }
  @column = Array.new(9) { Array.new(9, false) }
  @block = Array.new(3) { Array.new(3) { Array.new(9, false) } }
  @valid = false
  @spaces = []
  @board = board
  (0...9).each do |i|
    (0...9).each do |j|
      if @board[i][j] == "."
        @spaces.push([i, j])
      else
        digit = board[i][j].to_i - 1
        @line[i][digit] = @column[j][digit] = @block[i / 3][j / 3][digit] = true
      end
    end
  end
  dfs(0)
end
