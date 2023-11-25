# @param {String} a
# @param {String} b
# @return {Boolean}
def check_palindrome_formation(a, b)
  return check_concatenation(a, b) || check_concatenation(b, a)
end

def check_concatenation(a, b)
  n = a.length
  left, right = 0, n - 1
  while left < right and a[left] == b[right]
    left += 1
    right -= 1
    if left >= right
      return true
    end
  end
  return check_self_palindrome(a, left, right) || check_self_palindrome(b, left, right)
end

def check_self_palindrome(a, left, right)
  while left < right and a[left] == a[right]
    left += 1
    right -= 1
  end
  return left >= right
end
