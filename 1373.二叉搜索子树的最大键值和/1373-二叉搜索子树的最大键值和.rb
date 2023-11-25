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
def max_sum_bst(root)
  @ans = 0

  def dfs(node)
    if node == nil
      return [1.0 / 0.0, -1.0 / 0.0, 0]
    end
    l_min, l_max, l_sum = dfs(node.left)
    r_min, r_max, r_sum = dfs(node.right)
    x = node.val
    if x <= l_max or x >= r_min
      return [-1.0 / 0.0, 1.0 / 0.0, 0]
    end
    s = l_sum + r_sum + x
    @ans = [@ans, s].max
    return [[l_min, x].min, [r_max, x].max, s]
  end

  dfs(root)
  return @ans
end
