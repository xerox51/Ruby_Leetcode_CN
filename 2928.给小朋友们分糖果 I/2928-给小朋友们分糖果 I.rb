# @param {Integer} n
# @param {Integer} limit
# @return {Integer}
def distribute_candies(n, limit)
  choice(n + 2) - 3 * choice(n - limit + 1) + 3 * choice(n - 2 * limit) - choice(n - 3 * limit - 1)
end

def choice(n)
  if n > 1
    return n * (n - 1) / 2
  else
    return 0
  end
end
