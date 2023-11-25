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
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  dfs(root, sub_root)
end

def check(root, sub_root)
  if root == nil && sub_root == nil
    return true
  end
  if (root != nil && sub_root == nil) || (root == nil && sub_root != nil) || (root.val != sub_root.val)
    return false
  end
  return check(root.left, sub_root.left) && check(root.right, sub_root.right)
end

def dfs(root, sub_root)
  if root == nil
    return false
  end
  return check(root, sub_root) || dfs(root.left, sub_root) || dfs(root.right, sub_root)
end
