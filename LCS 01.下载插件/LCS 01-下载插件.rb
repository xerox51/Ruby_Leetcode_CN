# @param {Integer} n
# @return {Integer}
def least_minutes(n)
  if n == 1
    return 1
  elsif n == 2
    return 2
  else
    i = 1
    a = 2
    while a < n
      i += 1
      a = 2.pow(i)
    end
    return i + 1
  end
end
