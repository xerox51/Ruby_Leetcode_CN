# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_symmetric_integers(low, high)
  ans = 0
  for i in low..high
    if i.to_s.length % 2 == 0
      l = i.to_s.length / 2
      s1 = i.to_s[0, l].each_char.to_a.map { |it| it.to_i }
      s2 = i.to_s[l, l].each_char.to_a.map { |it| it.to_i }
      if s1.sum == s2.sum
        ans += 1
      end
    end
  end
  ans
end
