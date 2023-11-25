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
# @return {String}
def tree2str(root)
  if root == nil
    return ""
  end
  if root.left == nil and root.right == nil
    return "" + root.val.to_s
  end
  if root.right == nil
    return root.val.to_s + "(" + tree2str(root.left) + ")"
  end
  return root.val.to_s + "(" + tree2str(root.left) + ")(" + tree2str(root.right) + ")"
end
