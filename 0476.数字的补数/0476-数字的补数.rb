# @param {Integer} num
# @return {Integer}
def find_complement(num)
  s = num.to_s(2)
  t = s.each_char.map { |item| if item == "0" then item = "1" else item = "0" end }
  ans = 0
  t.each_with_index do |item, index|
    ans += (2 ** (t.length - index - 1)) * (item.to_i)
  end
  ans
end
