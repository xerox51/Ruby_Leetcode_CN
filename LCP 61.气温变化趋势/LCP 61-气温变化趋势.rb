# @param {Integer[]} temperature_a
# @param {Integer[]} temperature_b
# @return {Integer}
def temperature_trend(temperature_a, temperature_b)
  ans = []
  for i in 0...temperature_a.length - 1
    if temperature_a[i + 1] - temperature_a[i] > 0 and temperature_b[i + 1] - temperature_b[i] > 0
      ans.push(i)
    elsif temperature_a[i + 1] - temperature_a[i] == 0 and temperature_b[i + 1] - temperature_b[i] == 0
      ans.push(i)
    elsif temperature_a[i + 1] - temperature_a[i] < 0 and temperature_b[i + 1] - temperature_b[i] < 0
      ans.push(i)
    end
  end
  l = []
  if ans.length <= 1
    return ans.length
  end
  c = 1
  for i in 0...ans.length - 1
    if ans[i + 1] - ans[i] == 1 and i < ans.length - 2
      c += 1
    elsif ans[i + 1] - ans[i] > 1
      l.push(c)
      c = 1
    elsif ans[i + 1] - ans[i] == 1 and i == ans.length - 2
      c += 1
      l.push(c)
    end
  end
  l.max
end
