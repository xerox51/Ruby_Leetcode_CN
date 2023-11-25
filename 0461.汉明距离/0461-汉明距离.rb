# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  a = x.to_s(2).reverse
  b = y.to_s(2).reverse
  if a.length <= b.length
    ans = 0
    for i in 0...b.length
      if i <= a.length - 1 and a[i] != b[i]
        ans += 1
      end
      if i > a.length - 1 and b[i] != "0"
        ans += 1
      end
    end
    return ans
  else
    ans = 0
    for i in 0...a.length
      if i <= b.length - 1 and a[i] != b[i]
        ans += 1
      end
      if i > b.length - 1 and a[i] != "0"
        ans += 1
      end
    end
    return ans
  end
end
