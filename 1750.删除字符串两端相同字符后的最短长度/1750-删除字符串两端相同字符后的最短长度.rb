# @param {String} s
# @return {Integer}
def minimum_length(s)
  left, right = 0, s.length - 1
  while left < right and s[left] == s[right]
    c = s[left]
    while left <= right and s[left] == c
      left += 1
    end
    while right >= left and s[right] == c
      right -= 1
    end
  end
  right - left + 1
end
