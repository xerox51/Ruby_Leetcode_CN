# @param {Integer[]} satisfaction
# @return {Integer}
def max_satisfaction(satisfaction)
  satisfaction.sort!
  if satisfaction[-1] <= 0
    return 0
  else
    n = satisfaction.length
    max_total = 0
    l = satisfaction.sum
    m = 0
    for i in 0...n
      m += (i + 1) * satisfaction[i]
    end
    for i in 0...n
      if i == 0
        max_total = [max_total, m].max
      else
        max_total = [max_total, m - l].max
        m = m - l
        l -= satisfaction[i - 1]
      end
    end
    max_total
  end
end
