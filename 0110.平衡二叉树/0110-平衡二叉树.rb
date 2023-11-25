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
def is_balanced(root)
  height(root) >= 0
end

def height(root)
  if root == nil
    return 0
  end
  leftheight = height(root.left)
  rightheight = height(root.right)
  if leftheight == -1 or rightheight == -1 or (leftheight - rightheight).abs > 1
    return -1
  else
    return [leftheight, rightheight].max + 1
  end
end
