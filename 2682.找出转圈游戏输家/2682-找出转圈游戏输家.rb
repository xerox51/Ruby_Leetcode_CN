# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def circular_game_losers(n, k)
  h = (1..n).to_h { |item| [item, 0] }
  i = 0
  start = 1 + i * k
  while true
    if start % n == 0
      h[n] += 1
    else
      h[start % n] += 1
    end
    if h.has_value?(2)
      break
    end
    i += 1
    start = start + i * k
  end
  h.select! { |key, value| value == 0 }
  h.keys
end
