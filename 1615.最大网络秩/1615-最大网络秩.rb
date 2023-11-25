# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximal_network_rank(n, roads)
  connect = Array.new(n) { Array.new(n, false) }
  degree = Array.new(n, 0)
  roads.each do |item|
    connect[item[0]][item[1]] = true
    connect[item[1]][item[0]] = true
    degree[item[0]] += 1
    degree[item[1]] += 1
  end
  max_rank = 0
  (0...n).each do |i|
    (i + 1...n).each do |j|
      if connect[i][j] == true
        tmp = 1
      else
        tmp = 0
      end
      rank = degree[i] + degree[j] - tmp
      max_rank = [rank, max_rank].max
    end
  end
  max_rank
end
