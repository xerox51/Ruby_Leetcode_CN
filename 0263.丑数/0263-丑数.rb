# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  if n <= 0
    return false
  end
  factors = [2, 3, 5]
  factors.each do |factor|
    while n % factor == 0
      n /= factor
    end
  end
  return n == 1
end
