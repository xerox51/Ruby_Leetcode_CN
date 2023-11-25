# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []
  for i in 0...s.length
    if stack.length > 0 and stack[stack.length - 1] == s[i]
      stack.pop
    else
      stack.push(s[i])
    end
  end
  stack.join
end
