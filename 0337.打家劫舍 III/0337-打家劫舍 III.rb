# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def rob(root)
  @f, @g = {}, {}

  def dfs(node)
    if node == nil
      return
    end
    dfs(node.left)
    dfs(node.right)
    if @g[node.left] == nil
      @g[node.left] = 0
    end
    if @g[node.right] == nil
      @g[node.right] = 0
    end
    @f[node] = node.val + @g[node.left] + @g[node.right]
    if @f[node.left] == nil
      @f[node.left] = 0
    end
    if @g[node.left] == nil
      @g[node.left] = 0
    end
    if @f[node.right] == nil
      @f[node.right] = 0
    end
    if @g[node.right] == nil
      @g[node.right] = 0
    end
    @g[node] = [@f[node.left], @g[node.left]].max + [@f[node.right], @g[node.right]].max
  end

  dfs(root)
  if @f[root] != nil and @g[root] != nil
    return [@f[root], @g[root]].max
  end
  if @f[root] == nil and @g[root] != nil
    return [0, @g[root]].max
  end
  if @f[root] != nil and @g[root] == nil
    return [@f[root], 0].max
  end
  if @f[root] == nil and @g[root] == nil
    return 0
  end
end
