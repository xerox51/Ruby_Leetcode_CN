# @param {Integer[]} runes
# @return {Integer}
def rune_reserve(runes)
  runes.sort!
  ans = []
  for i in 0...runes.length - 1
    if runes[i + 1] - runes[i] > 1
      ans.push(i)
    end
  end
  if ans.length == 0
    return runes.length
  elsif ans.length == 1
    return [runes.length - ans[0] - 1, ans[0] + 1].max
  elsif ans.length == 2
    return [runes.length - ans[1] - 1, ans[0] + 1, ans[1] - ans[0]].max
  else
    a = 0
    for j in 0...ans.length
      if j == 0
        a = [a, ans[j] + 1].max
      elsif j > 0 and j <= ans.length - 1
        a = [a, ans[j] - ans[j - 1]].max
      end
    end
    a = [a, runes.length - ans[-1] - 1].max
    return a
  end
end
