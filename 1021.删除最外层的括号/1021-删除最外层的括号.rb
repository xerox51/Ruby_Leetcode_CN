# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  count = 0
  ans = ""
  for i in 0...s.length
    if s[i] == "("
      if count > 0
        ans << "("
      end
      count += 1
    end
    if s[i] == ")"
      if count > 1
        ans << ")"
      end
      count -= 1
    end
  end
  ans
end
