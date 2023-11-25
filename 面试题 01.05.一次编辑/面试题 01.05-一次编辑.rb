# @param {String} first
# @param {String} second
# @return {Boolean}
def one_edit_away(first, second)
  if first.length == second.length
    if first == second
      return true
    end
    counts = 0
    for i in 0...first.length
      if first[i] != second[i]
        counts += 1
      end
      if counts > 1
        return false
      end
    end
    return true
  end
  if (first.length - second.length).abs > 1
    return false
  end
  if first.length - second.length == 1
    return judge(second, first)
  end
  if first.length - second.length == -1
    return judge(first, second)
  end
end

def judge(f, s)
  left = 0
  right = s.length - 1
  flag_l = 0
  flag_r = 0
  while left <= f.length
    if f[left] == s[left]
      left += 1
      if left == f.length
        flag_l = left
      end
    else
      flag_l = left
      break
    end
  end
  while right > 0
    if f[right - 1] == s[right]
      right -= 1
    else
      flag_r = right
      break
    end
  end
  return flag_l == flag_r
end
