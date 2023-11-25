# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  if root1 == nil
    return root2
  end
  if root2 == nil
    return root1
  end
  merged = TreeNode.new(root1.val + root2.val)
  merged.left = merge_trees(root1.left, root2.left)
  merged.right = merge_trees(root1.right, root2.right)
  merged
end
