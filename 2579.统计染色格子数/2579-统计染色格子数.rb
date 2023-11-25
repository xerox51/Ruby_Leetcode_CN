# @param {Integer} n
# @return {Integer}
def colored_cells(n)
  (n * 2 - 1) * (n * 2 - 1) - 2 * (n - 1) * n
end
