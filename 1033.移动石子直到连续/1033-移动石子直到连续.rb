# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer[]}
def num_moves_stones(a, b, c)
  m = [a, b, c].sort
  if m[0] + 1 == m[1] and m[1] + 1 == m[2]
    return [0, 0]
  else
    m = [a, b, c].max
    n = [a, b, c].min
    l = [a, b, c].sort[1]
    if m - l > 2 && l - n > 2
      return [2, m - n - 2]
    else
      return [1, m - n - 2]
    end
  end
end
