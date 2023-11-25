# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort_by! { |element| [element[0], element[1]] }
  ans = []
  temp = intervals[0]
  for i in 0...intervals.length
    if i <= intervals.length - 1 and temp[1] >= intervals[i][0]
      temp = [temp[0], [intervals[i][1], temp[1]].max]
    end
    if temp[1] < intervals[i][0]
      ans.push(temp)
      temp = intervals[i]
    end
    if i == intervals.length - 1 and temp[1] >= intervals[i][1]
      ans.push(temp)
    end
  end
  return ans
end
