# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  if s.reverse == s
    return true
  end
  left = 0
  right = s.length - 1
  i = 0
  j = 0
  while left != right
    if s[left] == s[right]
      left += 1
      right -= 1
    else
      i = left + 1
      j = right - 1
      break
    end
  end
  if right - left == 1
    return true
  end
  flag_l = true
  flag_r = true
  while i <= right
    if s[i] == s[right]
      i += 1
      right -= 1
    else
      flag_l = false
      break
    end
  end
  while j >= left
    if s[j] == s[left]
      j -= 1
      left += 1
    else
      flag_r = false
      break
    end
  end
  return flag_l || flag_r
end
