# @param {Integer[]} flips
# @return {Integer}
def num_times_all_blue(flips)
  ans, right = 0, 0
  flips.each_with_index do |item, index|
    right = [right, item].max
    if right == index + 1
      ans += 1
    end
  end
  ans
end
