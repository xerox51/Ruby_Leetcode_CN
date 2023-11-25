# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
  if duration == 0
    return 0
  end
  total = 0
  n = time_series.length
  i = 0
  while i < n
    temp = time_series[i] + duration
    ans = time_series.bsearch_index { |item| item >= temp }
    if ans != nil
      if ans - i == 1
        total += duration
        i += 1
      else
        total += time_series[ans - 1] - time_series[i]
        i = ans - 1
      end
    else
      p1 = time_series[-1] - time_series[i]
      p2 = [temp - time_series[-1], duration].max
      total += p1
      total += p2
      break
    end
  end
  total
end
