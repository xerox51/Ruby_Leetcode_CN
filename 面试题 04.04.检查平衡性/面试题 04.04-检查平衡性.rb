# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  if root == nil
    return true
  else
    return (height(root.left) - height(root.right)).abs <= 1 && is_balanced(root.left) && is_balanced(root.right)
  end
end

def height(root)
  if root == nil
    return 0
  else
    return [height(root.left), height(root.right)].max + 1
  end
end
