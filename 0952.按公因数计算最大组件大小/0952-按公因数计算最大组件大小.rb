# @param {Integer[]} nums
# @return {Integer}
def largest_component_size(nums)
  @p = Array.new(20010, 0)
  @sz = Array.new(20010, 0)
  @ans = 1
  n = nums.length
  map = {}
  for i in 0...n
    cur = nums[i]
    j = 2
    while j * j <= cur
      if cur % j == 0
        add(map, j, i)
      end
      while cur % j == 0
        cur /= j
      end
      j += 1
    end
    if cur > 1
      add(map, cur, i)
    end
  end
  for i in 0..n
    @p[i] = i
    @sz[i] = 1
  end
  map.each_pair do |key, value|
    list = value
    for i in 1...list.length
      union(list[0], list[i])
    end
  end
  @ans
end

def find(x)
  if @p[x] != x
    @p[x] = find(@p[x])
  end
  @p[x]
end

def union(a, b)
  if find(a) == find(b)
    return
  end
  @sz[find(a)] += @sz[find(b)]
  @p[find(b)] = @p[find(a)]
  @ans = [@ans, @sz[find(a)]].max
end

def add(map_a, key, val)
  list = []
  if map_a.has_key?(key)
    list = map_a[key]
  else
    list = []
  end
  list.push(val)
  map_a[key] = list
end
