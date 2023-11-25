# @param {Integer[][]} pairs
# @return {Integer}
def find_longest_chain(pairs)
  pairs.sort_by! { |element| [element[0], element[1]] }
  n = pairs.length
  f = Array.new(n, 0)
  ans = 1
  for i in 0...n
    f[i] = 1
    j = i - 1
    while j >= 0 and f[i] == 1
      if pairs[j][1] < pairs[i][0]
        f[i] = f[j] + 1
      end
      j -= 1
    end
    ans = [ans, f[i]].max
  end
  ans
end
