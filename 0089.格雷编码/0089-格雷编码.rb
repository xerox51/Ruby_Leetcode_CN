# @param {Integer} n
# @return {Integer[]}
def gray_code(n)
  ans = [0]
  for i in 1..n
    (ans.length - 1).downto(0) do |j|
      ans.push(ans[j] | (1 << (i - 1)))
    end
  end
  ans
end
