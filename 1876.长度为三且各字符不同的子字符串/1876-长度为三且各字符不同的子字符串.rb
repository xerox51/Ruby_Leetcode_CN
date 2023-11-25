# @param {String} s
# @return {Integer}
def count_good_substrings(s)
  ans = 0
  for i in 0..s.length - 3
    if s[i, 3].each_char.to_a.uniq.length == 3
      ans += 1
    end
  end
  ans
end
