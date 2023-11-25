# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @return {TreeNode}
def inorder_successor(root, p)
  path = []
  inorder(root, path)
  if path.index(p.val) == path.length - 1
    return nil
  else
    return path[path.index(p.val) + 1]
  end
end

def inorder(root, path)
  if root.left != nil
    inorder(root.left, path)
  end
  path.push(root.val)
  if root.right != nil
    inorder(root.right, path)
  end
end
