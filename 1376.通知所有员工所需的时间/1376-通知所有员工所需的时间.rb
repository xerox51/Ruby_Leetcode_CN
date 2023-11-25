# @param {Integer} n
# @param {Integer} head_id
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Integer}
def num_of_minutes(n, head_id, manager, inform_time)
  manager.each_with_index do |item, index|
    if item < 0
      next
    end
    s = 0
    x = index
    while manager[x] >= 0
      s += inform_time[x]
      x = manager[x]
    end
    s += inform_time[x]
    x = index
    while manager[x] >= 0
      inform_time[x], s = s, s - inform_time[x]
      manager[x], x = -1, manager[x]
    end
  end
  inform_time.max
end
