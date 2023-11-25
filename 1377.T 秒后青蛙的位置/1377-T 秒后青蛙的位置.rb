# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer} t
# @param {Integer} target
# @return {Float}
def frog_position(n, edges, t, target)
  @g = Array.new(n + 1) { Array.new }
  edges.each do |item|
    @g[item[0]].push(item[1])
    @g[item[1]].push(item[0])
  end
  @target = target
  @seen = Array.new(n + 1, 0)

  def dfs(i, t)
    nxt = @g[i].length
    if i > 1
      nxt -= 1
    end
    if nxt == 0 or t == 0
      if i == @target
        return 1.0
      else
        return 0.0
      end
    end
    @seen[i] = 1
    @g[i].each do |j|
      if @seen[j] == 0
        p = dfs(j, t - 1)
        if p > 0
          return p / nxt.to_f
        end
      end
    end
    return 0.0
  end

  return dfs(1, t)
end
