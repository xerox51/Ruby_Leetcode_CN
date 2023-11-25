# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  left = 1
  right = n
  while left <= right
    mid = (left + right) / 2
    if guess(mid) > 0
      left = mid + 1
    end
    if guess(mid) < 0
      right = mid - 1
    end
    if guess(mid) == 0
      return mid
    end
  end
end
