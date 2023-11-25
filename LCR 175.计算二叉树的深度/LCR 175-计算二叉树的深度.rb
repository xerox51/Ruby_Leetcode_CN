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
def calculate_depth(root)
  if root == nil
    return 0
  end
  return [calculate_depth(root.left), calculate_depth(root.right)].max + 1
end
