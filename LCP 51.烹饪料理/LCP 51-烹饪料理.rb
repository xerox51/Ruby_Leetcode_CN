# @param {Integer[]} materials
# @param {Integer[][]} cookbooks
# @param {Integer[][]} attribute
# @param {Integer} limit
# @return {Integer}
def perfect_menu(materials, cookbooks, attribute, limit)
  @ans = 0
  dfs(0, @ans, 0, 0, limit, materials, cookbooks, attribute)
  if @ans == 0
    return -1
  else
    return @ans
  end
end

def dfs(k, ans, d, w, limit, materials, cookbooks, attribute)
  if w >= limit
    @ans = [@ans, d].max
  end
  for i in k...cookbooks.length
    f = true
    for j in 0...cookbooks[i].length
      if materials[j] < cookbooks[i][j]
        f = false
        break
      end
    end
    unless f
      next
    end
    dfs(i + 1, @ans, d, w, limit, materials, cookbooks, attribute)
    for j in 0...cookbooks.length
      if materials[j] != nil
        materials[j] -= cookbooks[i][j]
      end
    end
    dfs(i + 1, @ans, d + attribute[i][0], w + attribute[i][1], limit, materials, cookbooks, attribute)
    for j in 0...cookbooks.length
      if materials[j] != nil
        materials[j] += cookbooks[i][j]
      end
    end
  end
end
