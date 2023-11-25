# @param {Integer} n
# @param {Integer} time
# @return {Integer}
def pass_the_pillow(n, time)
  m = time / (n - 1)
  if m % 2 == 0
    return time % (n - 1) + 1
  else
    return n - time % (n - 1)
  end
end
