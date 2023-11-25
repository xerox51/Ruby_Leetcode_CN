# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  if s.length == 1
    return false
  end
  n = s.length / 2
  n.downto(1) do |i|
    if s[0, i] * (s.length / i) == s
      return true
    end
  end
  return false
end
