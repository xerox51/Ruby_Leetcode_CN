# @param {Integer} n
# @return {Boolean}
def is_strictly_palindromic(n)
  for i in 2..n - 2
    s = n.to_s(i)
    if s.reverse != s
      return false
    end
  end
  return true
end
