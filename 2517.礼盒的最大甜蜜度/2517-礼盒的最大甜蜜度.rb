# @param {Integer[]} price
# @param {Integer} k
# @return {Integer}
def maximum_tastiness(price, k)
  price.sort!
  left, right = 0, price[-1] - price[0]
  while left < right
    mid = (left + right + 1) / 2
    if check(price, k, mid)
      left = mid
    else
      right = mid - 1
    end
  end
  return left
end

def check(price, k, tastiness)
  prev = -1.0 / 0.0
  cnt = 0
  for p in price
    if p - prev >= tastiness
      cnt += 1
      prev = p
    end
  end
  return cnt >= k
end
