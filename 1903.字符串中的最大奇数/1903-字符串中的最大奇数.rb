# @param {String} num
# @return {String}
def largest_odd_number(num)
  if num.to_i % 2 == 1
    return num
  end
  flag = nil
  for i in 0...num.length
    if (num[i].to_i) % 2 == 1
      flag = i
    end
  end
  if flag == nil
    return ""
  else
    num[0, flag + 1]
  end
end
