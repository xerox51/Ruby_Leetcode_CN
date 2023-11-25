# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  if n == 0
    return 0
  elsif n == 1 or n == 2
    return 1
  else
    ans = [0, 1, 1]
    for i in 3..n
      ans.push(ans[i - 3] + ans[i - 2] + ans[i - 1])
    end
    return ans.last
  end
end
