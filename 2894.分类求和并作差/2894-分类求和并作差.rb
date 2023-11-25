# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
  a, b = cal(n, m)
  a - b
end

def cal(n, m)
  ans1 = 0
  ans2 = 0
  for i in 1..n
    if i % m != 0
      ans1 += i
    else
      ans2 += i
    end
  end
  [ans1, ans2]
end
