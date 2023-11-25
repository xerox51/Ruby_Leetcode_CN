# @param {String} s
# @param {String} target
# @return {Integer}
def rearrange_characters(s, target)
  ans = {}
  target.each_char.to_a.each do |item|
    ans[item] = s.count(item)
  end
  temp = {}
  ans.keys.each do |i|
    temp[i] = target.count(i)
  end
  fuck = []
  ans.each_pair do |key, value|
    fuck.push(ans[key] / temp[key])
  end
  return fuck.min
end
