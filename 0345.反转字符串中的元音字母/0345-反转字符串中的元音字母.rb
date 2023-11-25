# @param {String} s
# @return {String}
def reverse_vowels(s)
  h = {}
  for i in 0...s.length
    if ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"].include? s[i]
      h[i] = s[i]
    end
  end
  positions = h.values.reverse
  for j in 0...h.keys.length
    s[h.keys[j]] = positions[j]
  end
  s
end
