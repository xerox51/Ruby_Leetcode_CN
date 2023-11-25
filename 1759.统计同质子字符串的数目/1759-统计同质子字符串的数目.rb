# @param {String} s
# @return {Integer}
def count_homogenous(s)
  if s.length == 1
    return 1
  end
  if s.length == 2
    if s[0] != s[1]
      return 2
    else
      return 3
    end
  end
  total = {}
  letters = s[0]
  for i in 0...s.length - 1
    if i < s.length - 2 and s[i] != s[i + 1]
      unless total.has_key?(letters)
        total[letters] = 1
      else
        total[letters] += 1
      end
      letters = s[i + 1]
    elsif i < s.length - 2 and s[i] == s[i + 1]
      letters << s[i]
    end
    if i == s.length - 2 and s[i] == s[i + 1]
      letters << s[i + 1]
      unless total.has_key?(letters)
        total[letters] = 1
      else
        total[letters] += 1
      end
    end
    if i == s.length - 2 and s[i] != s[i + 1]
      unless total.has_key?(letters)
        total[letters] = 1
      else
        total[letters] += 1
      end
      unless total.has_key?(s[i + 1])
        total[s[i + 1]] = 1
      else
        total[s[i + 1]] += 1
      end
    end
  end
  num = 10 ** 9 + 7
  ans = 0
  total.each_pair do |key, value|
    ans += value * (1 + key.length) * key.length / 2
  end
  ans % num
end
