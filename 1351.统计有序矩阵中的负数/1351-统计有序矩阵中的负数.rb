# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  temp = grid.flatten.sort.bsearch_index { |x| x >= 0 }
  if temp == nil
    grid.flatten.length
  else
    temp
  end
end
