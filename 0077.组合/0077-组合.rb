# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  ans = []
  for i in 1..n
    ans.push(i)
  end
  temp = []
  ans.combination(k) do |item|
    temp.push(item)
  end
  return temp
end
