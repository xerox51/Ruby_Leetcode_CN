# @param {String} s
# @return {Integer}
def max_score(s)
  ans = []
  for i in 1..s.length - 1
    ans.push(s[0, i].count("0") + s[i, s.length - i].count("1"))
  end
  ans.max
end
