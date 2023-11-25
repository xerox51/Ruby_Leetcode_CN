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
# @return {Boolean}
def is_unival_tree(root)
  if root == nil
    return true
  end
  if root.left != nil
    if root.val != root.left.val || (not is_unival_tree(root.left))
      return false
    end
  end
  if root.right != nil
    if root.val != root.right.val || (not is_unival_tree(root.right))
      return false
    end
  end
  return true
end
