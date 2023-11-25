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
def max_depth(root)
  if root == nil
    return 0
  else
    left = max_depth(root.left)
    right = max_depth(root.right)
    return [left, right].max + 1
  end
end
