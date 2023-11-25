# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  ans = ""
  n, carry = [a.length, b.length].max, 0
  (0...n).each do |i|
    if i < a.length
      t_a = a[a.length - 1 - i].ord - "0".ord
      carry += t_a
    end
    if i < b.length
      t_b = b[b.length - 1 - i].ord - "0".ord
      carry += t_b
    end
    ans << (carry % 2 + "0".ord).chr
    carry /= 2
  end
  if carry > 0
    ans << "1"
  end
  ans.reverse
end
