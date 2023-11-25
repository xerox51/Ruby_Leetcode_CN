# @param {String} s
# @return {String}
def make_smallest_palindrome(s)
  s = s.each_char.to_a
  for i in 0...s.length / 2
    x, y = s[i], s[-1 - i]
    if x > y
      s[i] = y
    else
      s[-1 - i] = x
    end
  end
  s.join
end
