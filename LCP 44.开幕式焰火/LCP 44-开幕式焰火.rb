# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def num_color(root)
  ans = []
  inorder(root, ans)
  return ans.uniq.length
end

def inorder(root, ans)
  if root != nil
    inorder(root.left, ans)
    ans.push(root.val)
    inorder(root.right, ans)
  end
end
