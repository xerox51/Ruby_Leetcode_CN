# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
  s = ""
  for i in 0...num.length
    s << num[i].to_s
  end
  m = (s.to_i + k).to_s
  ans = []
  for i in 0...m.length
    ans << m[i].to_i
  end
  ans
end
