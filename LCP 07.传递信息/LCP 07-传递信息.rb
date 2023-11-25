# @param {Integer} n
# @param {Integer[][]} relation
# @param {Integer} k
# @return {Integer}
def num_ways(n, relation, k)
  dp = Array.new(n + 1, 0)
  dp[0] = 1
  for i in 0...k
    nextlist = Array.new(n + 1, 0)
    relation.each do |edge|
      src = edge[0]
      dst = edge[1]
      nextlist[dst] += dp[src]
    end
    dp = nextlist
  end
  dp[n - 1]
end
