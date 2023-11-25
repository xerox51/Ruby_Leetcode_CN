# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  if s.split.length != pattern.length
    return false
  end
  if pattern.each_char.to_a.zip(s.split).uniq.length == s.split.uniq.length
    if s.split.uniq.length == pattern.each_char.to_a.uniq.length
      return true
    end
  end
  return false
end
