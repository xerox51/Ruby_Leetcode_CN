# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  ans = []
  while n != 1
    if ans.length > 1 and ans.include?(transfer(n))
      return false
    end
    ans.push(transfer(n))
    n = transfer(n)
  end
  return true
end

def transfer(n)
  ans = 0
  while n > 0
    digit = n % 10
    ans += digit * digit
    n /= 10
  end
  return ans
end
