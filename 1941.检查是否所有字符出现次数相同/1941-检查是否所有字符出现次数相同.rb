# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
  s.squeeze.each_char.to_a.all? { |element| s.count(element) == s.count(s[0]) }
end
