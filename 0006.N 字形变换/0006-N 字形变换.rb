# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  n, r = s.length, num_rows
  if r == 1 or r >= n
    return s
  end
  t = r * 2 - 2
  ans = []
  for i in 0...r
    (0...n - i).step(t) do |j|
      ans.push(s[j + i])
      if 0 < i and i < r - 1 and j + t - i < n
        ans.push(s[j + t - i])
      end
    end
  end
  ans.join
end
