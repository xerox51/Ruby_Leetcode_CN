# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s.downcase!
  s.each_char { |c| if not(48..57).include?(c.ord) and not(97..122).include?(c.ord) then s.delete!(c) end }
  return s.reverse.eql?(s)
end
