# @param {String} s
# @return {String}
def make_fancy_string(s)
  stack = []
  counts = 1
  for i in 0...s.length
    if i < s.length - 1 and s[i] != s[i + 1]
      stack.push(s[i])
      counts = 1
    end
    if i < s.length - 1 and s[i] == s[i + 1]
      counts += 1
      if counts < 3
        stack.push(s[i])
      end
      if counts == 3
        next
      end
    end
    if i == s.length - 1
      stack.push(s[i])
    end
  end
  stack.join
end
