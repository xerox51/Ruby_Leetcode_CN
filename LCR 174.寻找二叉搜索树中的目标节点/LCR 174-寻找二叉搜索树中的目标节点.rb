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
# @param {Integer} cnt
# @return {Integer}
def find_target_node(root, cnt)
  @cnt = cnt
  dfs(root)
  @res
end

def dfs(root)
  if root == nil
    return
  end
  dfs(root.right)
  if @cnt == 0
    return
  end
  @cnt -= 1
  if @cnt == 0
    @res = root.val
  end
  dfs(root.left)
end
