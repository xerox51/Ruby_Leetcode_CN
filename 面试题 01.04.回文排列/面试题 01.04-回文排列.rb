# @param {String} s
# @return {Boolean}
def can_permute_palindrome(s)
  if s.length % 2 == 0
    return s.each_char.to_a.uniq.all? { |item| s.count(item) % 2 == 0 }
  else
    return s.each_char.to_a.uniq.one? { |item| s.count(item) % 2 == 1 }
  end
end
