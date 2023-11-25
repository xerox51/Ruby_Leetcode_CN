# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  ans = 0
  for i in 0...start_time.length
    if start_time[i] <= query_time and end_time[i] >= query_time
      ans += 1
    end
  end
  ans
end
