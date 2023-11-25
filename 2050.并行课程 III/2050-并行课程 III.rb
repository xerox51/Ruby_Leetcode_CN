# @param {Integer} n
# @param {Integer[][]} relations
# @param {Integer[]} time
# @return {Integer}
def minimum_time(n, relations, time)
  g = {}
  indeg = Array.new(n, 0)
  relations.each do |relation|
    unless g.has_key?(relation[0] - 1)
      g[relation[0] - 1] = [relation[1] - 1]
    else
      g[relation[0] - 1].push(relation[1] - 1)
    end
    indeg[relation[1] - 1] += 1
  end
  q = []
  f = Array.new(n, 0)
  ans = 0
  items = indeg.zip(time)
  items.each_with_index do |item, index|
    if item[0] == 0
      q.push(index)
      f[index] = item[1]
      ans = [ans, item[1]].max
    end
  end
  while not q.empty?
    i = q.shift
    if g.has_key?(i)
      for j in g[i]
        f[j] = [f[j], f[i] + time[j]].max
        ans = [ans, f[j]].max
        indeg[j] -= 1
        if indeg[j] == 0
          q.push(j)
        end
      end
    end
  end
  ans
end
