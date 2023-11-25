# @param {String} s
# @return {Integer}
def max_power(s)
  cnt = 1
  ans = []
  for i in 0...s.length
    if i == s.length - 1 or s[i] != s[i + 1]
      if cnt >= 2
        ans.append(cnt)
      end
      cnt = 1
    else
      cnt += 1
    end
  end
  unless ans.empty?
    ans.max
  else
    1
  end
end
