# @param {String} s
# @return {Integer}
def score_of_parentheses(s)
  st = [0]
  for i in 0...s.length
    if s[i] == "("
      st.push(0)
    else
      v = st.pop()
      st[-1] += [2 * v, 1].max
    end
  end
  st[-1]
end
