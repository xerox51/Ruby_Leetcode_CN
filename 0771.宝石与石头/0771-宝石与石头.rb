# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  counts = 0
  jewels.each_char do |item|
    counts += stones.count(item)
  end
  counts
end
