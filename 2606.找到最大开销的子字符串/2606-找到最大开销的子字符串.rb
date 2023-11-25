# @param {String} s
# @param {String} chars
# @param {Integer[]} vals
# @return {Integer}
def maximum_cost_substring(s, chars, vals)
  tmp = {}
  for i in 0...chars.length
    tmp[chars[i]] = vals[i]
  end
  total = 0
  temp = []
  answer = 0
  for i in 0...s.length
    if tmp.has_key?(s[i])
      total += tmp[s[i]]
    else
      total += s[i].ord - "a".ord + 1
    end
    if total < 0
      total = 0
    end
    answer = [answer, total].max
  end
  answer
end
