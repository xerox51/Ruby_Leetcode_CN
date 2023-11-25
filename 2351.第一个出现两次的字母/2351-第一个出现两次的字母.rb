# @param {String} s
# @return {Character}
def repeated_character(s)
  h = {}
  for i in 0...s.length
    if h.has_key?(s[i])
      h[s[i]] += 1
    else
      h[s[i]] = 1
    end
    if h.has_value?(2)
      return h.key(2)
    end
  end
end
