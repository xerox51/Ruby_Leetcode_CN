# @param {Integer[]} time
# @return {Integer}
def num_pairs_divisible_by60(time)
  cnt = Array.new(60, 0)
  for i in time
    cnt[i % 60] += 1
  end
  res = 0
  for i in 1...30
    res += cnt[i] * cnt[60 - i]
  end
  res += cnt[0] * (cnt[0] - 1) / 2 + cnt[30] * (cnt[30] - 1) / 2
  res
end
