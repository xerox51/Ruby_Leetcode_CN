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
def get_minimum_difference(root)
  @ans = 1.0 / 0.0
  @pre = -1
  dfs(root)
  @ans
end

def dfs(root)
  if root == nil
    return
  end
  dfs(root.left)
  if @pre == -1
    @pre = root.val
  else
    @ans = [@ans, root.val - @pre].min
    @pre = root.val
  end
  dfs(root.right)
end
