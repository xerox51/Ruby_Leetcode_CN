# @param {Integer[]} favorite
# @return {Integer}
def maximum_invitations(favorite)
  n = favorite.length
  indeg = Array.new(n, 0)
  for i in 0...n
    indeg[favorite[i]] += 1
  end
  used = Array.new(n, false)
  f = Array.new(n, 1)
  q = []
  for i in 0...n
    if indeg[i] == 0
      q.push(i)
    end
  end
  while not q.empty?
    u = q.shift
    used[u] = true
    v = favorite[u]
    f[v] = [f[v], f[u] + 1].max
    indeg[v] -= 1
    if indeg[v] == 0
      q.push(v)
    end
  end
  ring, total = 0, 0
  for i in 0...n
    unless used[i]
      j = favorite[i]
      if favorite[j] == i
        total += (f[i] + f[j])
        used[i], used[j] = true, true
      else
        u = i
        cnt = 0
        while true
          cnt += 1
          u = favorite[u]
          used[u] = true
          if u == i
            break
          end
        end
        ring = [ring, cnt].max
      end
    end
  end
  [ring, total].max
end
