# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer[]} queries
# @return {Integer[]}
def count_pairs(n, edges, queries)
  degree = Array.new(n, 0)
  cnt = {}
  edges.each do |edge|
    x, y = edge[0] - 1, edge[1] - 1
    if x > y
      x, y = y, x
    end
    degree[x] += 1
    degree[y] += 1
    if cnt.has_key?(x * n + y)
      cnt[x * n + y] += 1
    else
      cnt[x * n + y] = 1
    end
  end
  arr = degree.sort
  ans = []
  queries.each do |bound|
    total = 0
    j = n - 1
    for i in 0...n
      while j > i and arr[i] + arr[j] > bound
        j -= 1
      end
      total += n - 1 - [i, j].max
    end
    cnt.each_pair do |key, value|
      x, y = key / n, key % n
      if degree[x] + degree[y] > bound and degree[x] + degree[y] - value <= bound
        total -= 1
      end
    end
    ans.push(total)
  end
  ans
end
