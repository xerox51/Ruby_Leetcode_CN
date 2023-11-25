# @param {Integer[][]} intervals
# @return {Boolean}
def can_receive_all_signals(intervals)
  ans = intervals.sort_by! { |element| [element[0], element[1]] }
  for i in 0...ans.length
    if i < ans.length - 1
      if ans[i + 1][0] < ans[i][1]
        return false
      end
    end
  end
  return true
end
