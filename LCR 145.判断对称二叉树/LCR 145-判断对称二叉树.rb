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
def check_symmetric_tree(root)
  check(root, root)
end

def check(p, q)
  if (p == nil) && (q == nil)
    return true
  end
  if (p == nil) || (q == nil)
    return false
  end
  return p.val == q.val && check(p.left, q.right) && check(p.right, q.left)
end
