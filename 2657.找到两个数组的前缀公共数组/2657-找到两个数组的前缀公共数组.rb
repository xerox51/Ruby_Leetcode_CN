# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def find_the_prefix_common_array(a, b)
  ans = []
  for i in 1..a.length
    ans.push(a[0, i].intersection(b[0, i]).uniq.length)
  end
  ans
end
