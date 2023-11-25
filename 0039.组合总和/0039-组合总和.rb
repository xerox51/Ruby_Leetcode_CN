def combination_sum(candidates, target)
  size = candidates.length
  if size == 0
    return []
  end
  @res = []
  path = []
  dfs(candidates, 0, size, path, target)
  @res
end

def dfs(candidates, beginning, size, path, target)
  if target < 0
    return
  end
  if target == 0
    @res.push(path)
    return
  end
  for index in beginning...size
    dfs(candidates, index, size, path + [candidates[index]], target - candidates[index])
  end
end
