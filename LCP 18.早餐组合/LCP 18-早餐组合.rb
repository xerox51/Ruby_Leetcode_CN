# @param {Integer[]} staple
# @param {Integer[]} drinks
# @param {Integer} x
# @return {Integer}
def breakfast_number(staple, drinks, x)
  staple.sort!
  drinks.sort!
  d_len = drinks.length
  ans = 0
  t = 10 ** 9 + 7
  staple.each do |item|
    m = drinks.bsearch_index { |it| it > x - item }
    if m != nil
      ans += m
    else
      ans += d_len
    end
  end
  ans % t
end
