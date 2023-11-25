# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def construct_array(n, k)
  ans = [1]
  l = 1
  k.downto(1) do |i|
    temp = i + 1
    l += 1
    if temp < l
      break
    end
    ans.push(temp)
    ans.push(l)
  end
  if ans[-2] == ans[-1]
    ans.pop
    (ans.length + 1).upto(n) do |i|
      ans.push(i)
    end
  else
    (ans.length + 1).upto(n) do |i|
      ans.push(i)
    end
  end
  ans
end
