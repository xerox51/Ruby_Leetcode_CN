def tiling_rectangle(n, m)
  @ans = [m, n].max
  @n = n
  @m = m
  @rect = Array.new(n) { Array.new(m, false) }
  dfs(0, 0, 0)
  return @ans
end

def dfs(x, y, cnt)
  if cnt >= @ans
    return
  end
  if x >= @n
    @ans = cnt
    return
  end

  if y >= @m
    dfs(x + 1, 0, cnt)
    return
  end
  if @rect[x][y]
    dfs(x, y + 1, cnt)
    return
  end
  k = [@n - x, @m - y].min
  while k >= 1 && is_available(x, y, k)
    fillup(x, y, k, true)
    dfs(x, y + k, cnt + 1)
    fillup(x, y, k, false)
    k -= 1
  end
end

def is_available(x, y, k)
  0.upto(k - 1) do |i|
    0.upto(k - 1) do |j|
      if @rect[x + i][y + j] == true
        return false
      end
    end
  end
  return true
end

def fillup(x, y, k, val)
  0.upto(k - 1) do |i|
    0.upto(k - 1) do |j|
      @rect[x + i][y + j] = val
    end
  end
end
