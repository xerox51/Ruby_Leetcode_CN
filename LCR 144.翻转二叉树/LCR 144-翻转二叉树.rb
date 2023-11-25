# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def mirror_tree(root)
  if root == nil
    return
  end
  stack = [root]
  while not stack.empty?
    node = stack.pop
    if node.left != nil
      stack.push(node.left)
    end
    if node.right != nil
      stack.push(node.right)
    end
    node.left, node.right = node.right, node.left
  end
  root
end
