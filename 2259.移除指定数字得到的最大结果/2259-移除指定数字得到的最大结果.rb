# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
  i = 0
  ans = []
  while i < number.length
    if number[i] != digit
      i += 1
    else
      ans.push((number[0, i] + number[i + 1, number.length - i - 1]).to_i)
      i += 1
    end
  end
  return ans.max.to_s
end
