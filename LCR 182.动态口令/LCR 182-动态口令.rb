# @param {String} s
# @param {Integer} n
# @return {String}
def reverse_left_words(s, n)
  s = s[n, s.length - n] + s[0, n]
end
