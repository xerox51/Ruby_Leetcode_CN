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
def is_symmetric(root)
  if root == nil
    return true
  end
  return dfs(root.left, root.right)
end

def dfs(left, right)
  unless (left or right)
    return true
  end
  unless (left and right)
    return false
  end
  if left.val != right.val
    return false
  end
  return dfs(left.left, right.right) && dfs(left.right, right.left)
end
