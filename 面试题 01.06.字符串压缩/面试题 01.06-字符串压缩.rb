# @param {String} s
# @return {String}
def compress_string(s)
  stack = [s[0]]
  count = 1
  for i in 0...s.length
    if i < s.length - 1 and s[i] == s[i + 1]
      count += 1
    end
    if i < s.length - 1 and s[i] != s[i + 1]
      stack.push(count.to_s)
      stack.push(s[i + 1])
      count = 1
    end
    if i == s.length - 1 and s[i - 1] == s[i]
      stack.push(count.to_s)
    end
    if i == s.length - 1 and s[i - 1] != s[i]
      stack.push("1")
    end
  end
  if stack.join.length < s.length
    stack.join
  else
    s
  end
end
