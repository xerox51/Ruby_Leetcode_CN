# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_smallest_string(n, k)
  if n == 1
    s = ""
    s << ("a".ord + k - 1).chr
  elsif n > 1 and k / 26 <= n - 1
    i = 0
    s = ""
    while true
      i += 1
      if i * 26 + (n - i) >= k
        break
      end
    end
    if i * 26 + (n - i) == k
      s << "a" * (n - i)
      s << "z" * i
    else
      s << "a" * (n - i)
      s << (k - (i - 1) * 26 - n + i - 1 + "a".ord).chr
      s << "z" * (i - 1)
    end
  else
    s = ""
    s << "z" * n
  end
  s
end
