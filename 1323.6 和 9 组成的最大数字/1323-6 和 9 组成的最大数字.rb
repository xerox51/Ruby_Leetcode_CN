# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
  a = num.to_s.each_char.to_a
  h = {}
  for i in 0...a.length
    h[i] = a[i].to_i
  end
  c = h.select { |key, value| value == 6 }
  if c.empty?
    return num
  else
    d = c.keys.min
    a[d] = "9"
    a.join.to_i
  end
end
