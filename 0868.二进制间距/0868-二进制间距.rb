# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  n = n.to_s(2)
  l = n.length
  ans = 0
  if n.count("1") <= 1
    return 0
  else
    a = n.index("1")
    b = a
    while a <= l - 1
      a += 1
      if n[a] == "1"
        ans = [ans, a - b].max
        b = a
      end
    end
  end
  ans
end
