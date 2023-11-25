# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  for i in 0...s.length / 2
    s[i], s[s.length - i - 1] = s[s.length - i - 1], s[i]
  end
end
