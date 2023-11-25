# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  check = [0, 0, 1, -1, -1, 1, 1, -1, 0, 1]
  ans = 0
  for i in 1..n
    s = i.to_s
    valid, diff = true, false
    for j in 0...s.length
      if check[s[j].to_i] == -1
        valid = false
      elsif check[s[j].to_i] == 1
        diff = true
      end
    end
    if valid and diff
      ans += 1
    end
  end
  ans
end
