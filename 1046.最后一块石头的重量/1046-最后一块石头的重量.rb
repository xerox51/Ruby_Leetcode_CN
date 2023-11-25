# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!
  for i in 0...stones.length
    if stones.length == 1 and stones[0] > 0
      return stones[0]
    elsif stones.length == 0
      return 0
    end
    temp = stones[-1] - stones[-2]
    if temp == 0
      stones.pop
      stones.pop
    else
      stones.pop
      stones[-1] = temp
      stones.sort!
    end
  end
end
