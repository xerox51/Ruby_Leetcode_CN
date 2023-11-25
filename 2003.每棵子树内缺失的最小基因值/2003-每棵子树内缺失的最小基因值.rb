# @param {Integer[]} parents
# @param {Integer[]} nums
# @return {Integer[]}
def smallest_missing_value_subtree(parents, nums)
  n = parents.length
  @nums = nums
  @children = Array.new(n) { Array.new }
  for i in 1...n
    @children[parents[i]].push(i)
  end
  @genSet = {}
  @visited = Array.new(n, false)
  if @nums.include?(1)
    node = @nums.index(1)
  else
    node = -1
  end
  res, inode = Array.new(n, 1), 1
  while node != -1
    dfs(node)
    while @genSet.has_key?(inode)
      inode += 1
    end
    res[node], node = inode, parents[node]
  end
  res
end

def dfs(node)
  if @visited[node]
    return
  end
  @visited[node] = true
  @genSet[@nums[node]] = 1
  for child in @children[node]
    dfs(child)
  end
end
