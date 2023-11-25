# @param {Integer[]} time
# @param {Integer[][]} fruits
# @param {Integer} limit
# @return {Integer}
def get_minimum_time(time, fruits, limit)
  ans = 0
  fruits.each do |item|
    if item[1] % limit == 0
      ans += time[item[0]] * item[1] / limit
    else
      ans += time[item[0]] * (item[1] / limit + 1)
    end
  end
  ans
end
