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
# @return {TreeNode}
def increasing_bst(root)
  dummyNode = TreeNode.new(-1)
  @resNode = dummyNode
  inorder(root)
  return dummyNode.right
end

def inorder(node)
  if node == nil
    return
  end
  inorder(node.left)
  @resNode.right = node
  node.left = nil
  @resNode = node
  inorder(node.right)
end
