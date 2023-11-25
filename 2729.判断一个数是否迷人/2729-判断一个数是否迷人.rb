# @param {Integer} n
# @return {Boolean}
def is_fascinating(n)
  if n.to_s.end_with?("0")
    return false
  elsif [n.to_s, (n * 2).to_s, (n * 3).to_s].join.each_char.to_a.sort.join != "123456789"
    return false
  else
    return true
  end
end
