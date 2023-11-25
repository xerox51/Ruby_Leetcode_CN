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
def min_depth(root)
  if root == nil
    return 0
  end
  if root.left == nil && root.right == nil
    return 1
  end
  mindepth = 10 ** 9
  if root.left != nil
    mindepth = [min_depth(root.left), mindepth].min
  end
  if root.right != nil
    mindepth = [min_depth(root.right), mindepth].min
  end
  mindepth + 1
end
