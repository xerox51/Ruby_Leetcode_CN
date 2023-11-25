# @param {Integer} x
# @param {Integer} y
# @param {Integer} bound
# @return {Integer[]}
def powerful_integers(x, y, bound)
  l = [x, y].max
  r = [x, y].min
  t = r
  m = l
  if t > 1 and bound > 1
    ans1 = [t ** 0, t]
    while t <= bound
      t = t * r
      if t > bound
        break
      end
      ans1.push(t)
    end
    ans2 = [m ** 0, m]
    while m <= bound
      m = m * l
      if m > bound
        break
      end
      ans2.push(m)
    end
    ans = []
    for i in 0...ans1.length
      for j in 0...ans2.length
        if ans1[i] + ans2[j] <= bound
          ans.push(ans1[i] + ans2[j])
        end
      end
    end
    return ans.uniq
  elsif t > 1 and bound <= 1
    return []
  elsif m == 1 and bound > 1
    return [2]
  elsif m == 1 and bound <= 1
    return []
  elsif t == 1 and bound > 1
    if t + m <= bound
      ans = [2, t + m]
    else
      ans = [2]
    end
    while m <= bound
      m = m * l
      if m + 1 > bound
        break
      end
      ans.push(1 + m)
    end
    return ans.uniq
  elsif t == 1 and bound <= 1
    return []
  end
end
