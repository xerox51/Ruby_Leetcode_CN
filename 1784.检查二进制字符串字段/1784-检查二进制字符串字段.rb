# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
  if s.length == 1
    return true
  end
  flag = 0
  for i in 0...s.length
    if s[i] == "0"
      flag = i
      break
    end
  end
  if flag == 0
    return true
  else
    return s[flag, s.length - flag].squeeze == "0"
  end
end
