# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  temp = s.split.select { |element| element.to_i != 0 }
  for i in 1...temp.length
    if temp[i].to_i <= temp[i - 1].to_i
      return false
    end
  end
  return true
end
