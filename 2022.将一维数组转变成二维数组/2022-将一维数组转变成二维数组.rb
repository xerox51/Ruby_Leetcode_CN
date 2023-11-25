# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
  if m * n != original.length
    return []
  else
    ans = Array.new(m) { Array.new(n, 0) }
    for i in 0...original.length
      ans[i / n][i % n] = original[i]
    end
    return ans
  end
end
