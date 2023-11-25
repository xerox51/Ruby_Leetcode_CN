# @param {Integer[][]} intervals
# @return {Integer[]}
def find_right_interval(intervals)
  if intervals.length == 1
    return [-1]
  end
  h = {}
  for i in 0...intervals.length
    h[intervals[i]] = i
  end
  temp = intervals.sort_by { |element| element }
  ans = Array.new(intervals.length, -1)
  for i in 0...temp.length
    t = temp.bsearch_index { |element| element[0] >= temp[i][1] }
    if t == nil
      next
    end
    ans[h[temp[i]]] = h[temp[t]]
  end
  return ans
end
