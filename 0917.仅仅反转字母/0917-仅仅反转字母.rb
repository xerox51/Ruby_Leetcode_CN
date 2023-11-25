# @param {String} s
# @return {String}
def reverse_only_letters(s)
  h = {}
  for i in 0...s.length
    if (s[i].ord >= 97 and s[i].ord <= 122) or (s[i].ord >= 65 and s[i].ord <= 90)
      h[i] = s[i]
    end
  end
  positions = h.values.reverse
  for i in 0...h.keys.length
    s[h.keys[i]] = positions[i]
  end
  s
end
