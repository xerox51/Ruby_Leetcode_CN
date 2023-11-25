# @param {String} num
# @return {String}
def remove_trailing_zeros(num)
  if num.end_with?("0")
    num = num.each_char.to_a
    while num[-1] == "0"
      num.pop
    end
    num.join
  else
    return num
  end
end
