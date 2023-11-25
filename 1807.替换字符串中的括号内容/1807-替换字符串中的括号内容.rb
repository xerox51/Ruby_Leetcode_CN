# @param {String} s
# @param {String[][]} knowledge
# @return {String}
def evaluate(s, knowledge)
  d = {}
  knowledge.each do |item|
    d[item[0]] = item[1]
  end
  ans = []
  start = -1
  for i in 0...s.length
    if s[i] == "("
      start = i
    elsif s[i] == ")"
      if d.has_key?(s[start + 1, i - start - 1])
        ans.push(d[s[start + 1, i - start - 1]])
        start = -1
      else
        ans.push("?")
        start = -1
      end
    elsif start < 0
      ans.push(s[i])
    end
  end
  ans.join
end
