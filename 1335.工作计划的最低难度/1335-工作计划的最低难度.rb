# @param {Integer[]} job_difficulty
# @param {Integer} d
# @return {Integer}
def min_difficulty(job_difficulty, d)
  n = job_difficulty.length
  if n < d
    return -1
  end
  f = Array.new(d) { Array.new(n, 3 * (10 ** 5)) }
  for i in 0...n
    f[0][i] = job_difficulty[0, i + 1].max
  end
  (1...d).each do |i|
    (i...n).each do |j|
      mx = 0
      j.downto(i) do |k|
        mx = [mx, job_difficulty[k]].max
        f[i][j] = [f[i][j], f[i - 1][k - 1] + mx].min
      end
    end
  end
  f[-1][-1]
end
