# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  left, right = new_interval
  placed = false
  ans = []
  intervals.each do |item|
    if item[0] > right
      unless placed
        ans.push([left, right])
        placed = true
      end
      ans.push([item[0], item[1]])
    elsif item[1] < left
      ans.push([item[0], item[1]])
    else
      left = [left, item[0]].min
      right = [right, item[1]].max
    end
  end
  ans.push([left, right]) unless placed
  ans
end
