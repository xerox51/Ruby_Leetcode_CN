# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  if s.length == t.length
    return s.each_char.to_a.uniq.all? { |element| s.count(element) == t.count(element) }
  else
    return false
  end
end
