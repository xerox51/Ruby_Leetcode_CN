# @param {Integer[][]} source
# @param {Integer[][]} target
# @return {Integer}
def minimum_switching_times(source, target)
  cnt = {}
  for i in 0...source.length
    for j in 0...source[i].length
      if cnt[source[i][j]] == nil
        cnt[source[i][j]] = 1
      else
        cnt[source[i][j]] += 1
      end
      if cnt[target[i][j]] == nil
        cnt[target[i][j]] = -1
      else
        cnt[target[i][j]] -= 1
      end
    end
  end
  ans = 0
  cnt.each_pair do |key, it|
    ans += it.abs
  end
  ans / 2
end
