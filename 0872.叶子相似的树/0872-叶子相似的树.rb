# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  seq1 = []
  if root1 != nil
    dfs(root1, seq1)
  end
  seq2 = []
  if root2 != nil
    dfs(root2, seq2)
  end
  seq1 == seq2
end

def dfs(node, seq)
  if node.left == nil && node.right == nil
    seq.push(node.val)
  else
    if node.left != nil
      dfs(node.left, seq)
    end
    if node.right != nil
      dfs(node.right, seq)
    end
  end
end
