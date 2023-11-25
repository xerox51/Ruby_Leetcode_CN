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
def find_tilt(root)
  @ans = 0
  dfs(root)
  @ans
end

def dfs(node)
  if node == nil
    return 0
  end
  sum_left = dfs(node.left)
  sum_right = dfs(node.right)
  @ans += (sum_left - sum_right).abs
  sum_left + sum_right + node.val
end
