# @param {String} s
# @return {String}
def make_good(s)
  i = 0
  stack = []
  while i < s.length
    if stack.length > 0 and stack[-1].swapcase == s[i]
      stack.pop
    else
      stack.push(s[i])
    end
    i += 1
  end
  stack.join
end
