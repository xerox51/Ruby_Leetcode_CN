# @param {String[]} strs
# @return {Integer}
def maximum_value(strs)
  ans = 0
  strs.each do |item|
    if item.each_char.to_a.all? { |it| it.ord >= 48 and it.ord <= 57 }
      ans = [ans, item.to_i].max
    else
      ans = [ans, item.length].max
    end
  end
  ans
end
