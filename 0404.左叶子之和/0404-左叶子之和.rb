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
def sum_of_left_leaves(root)
  if root == nil
    return 0
  end
  dfs(root)
end

def isleafnode(node)
  return node.left == nil && node.right == nil
end

def dfs(node)
  ans = 0
  if node.left != nil
    if isleafnode(node.left)
      ans += node.left.val
    else
      ans += dfs(node.left)
    end
  end
  if node.right != nil and (not isleafnode(node.right))
    ans += dfs(node.right)
  end
  return ans
end
