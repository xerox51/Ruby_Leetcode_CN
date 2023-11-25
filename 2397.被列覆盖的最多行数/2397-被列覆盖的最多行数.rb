# @param {Integer[][]} matrix
# @param {Integer} num_select
# @return {Integer}
def maximum_rows(matrix, num_select)
  m = matrix.length
  n = matrix[0].length
  dp = Array.new(1 << n, 0)
  matrix.each do |ints|
    mask = 0
    (0...n).each do |j|
      mask = mask << 1 | ints[j]
    end
    (0...(1 << n)).each do |j|
      if (j & mask) == mask
        dp[j] += 1
      end
    end
  end
  ans = 0
  (0...(1 << n)).each do |i|
    cnt = 0
    (0...n).each do |j|
      if ((i >> j) & 1) == 1
        cnt += 1
      end
    end
    if cnt == num_select
      ans = [ans, dp[i]].max
    end
  end
  ans
end
