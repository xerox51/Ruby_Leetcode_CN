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
def lca_deepest_leaves(root)
  f(root)[1]
end

def f(root)
  if root == nil
    return 0, nil
  end
  d1, lca1 = f(root.left)
  d2, lca2 = f(root.right)
  if d1 > d2
    return d1 + 1, lca1
  end
  if d1 < d2
    return d2 + 1, lca2
  end
  return d1 + 1, root
end
