# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
  ans = []
  temp = start
  for i in 0...n
    ans.push(start + 2 * i)
    if i > 0
      temp = temp ^ ans[i]
    end
  end
  temp
end
