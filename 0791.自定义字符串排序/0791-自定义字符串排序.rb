# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
  ans = ""
  temp = s.each_char.to_a
  for i in 0...order.length
    if temp.include?(order[i])
      n = temp.count(order[i])
      ans << order[i] * n
    end
  end
  temp_r = temp.uniq
  order_r = order.each_char.to_a
  for j in 0...temp_r.length
    unless order_r.include?(temp_r[j])
      m = temp.count(temp_r[j])
      ans << temp_r[j] * m
    end
  end
  ans
end
