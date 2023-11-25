# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  if s.reverse.eql?(s)
    1
  else
    2
  end
end
