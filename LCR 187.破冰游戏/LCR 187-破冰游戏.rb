# @param {Integer} num
# @param {Integer} target
# @return {Integer}
def ice_breaking_game(num, target)
  f(num, target)
end

def f(num, target)
  if num == 0
    return 0
  end
  x = f(num - 1, target)
  return (target + x) % num
end
