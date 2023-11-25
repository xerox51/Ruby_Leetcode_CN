# @param {String[]} demand
# @return {Integer}
def min_num_booths(demand)
  ans = {}
  for i in 0...demand.length
    for j in 0...demand[i].length
      if ans.has_key?(demand[i][j]) and i != ans[demand[i][j]][-1][0]
        ans[demand[i][j]].push([i, 1])
      elsif ans.has_key?(demand[i][j]) and i == ans[demand[i][j]][-1][0]
        ans[demand[i][j]][-1][1] += 1
      end
      unless ans.has_key?(demand[i][j])
        ans[demand[i][j]] = [[i, 1]]
      end
    end
  end
  total = 0
  ans.each_pair do |key, value|
    temp = value[0][1]
    value.each_with_index do |item, index|
      if item[1] > temp
        temp = item[1]
      end
    end
    total += temp
  end
  total
end
