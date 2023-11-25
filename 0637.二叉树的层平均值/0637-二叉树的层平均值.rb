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
# @return {Float[]}
def average_of_levels(root)
  @counts = []
  @totals = []
  dfs(root, 0)
  ans = []
  for item in @totals.zip(@counts)
    ans.push(item[0] / item[1].to_f)
  end
  ans
end

def dfs(root, level)
  if root == nil
    return
  end
  if level < @totals.length
    @totals[level] += root.val
    @counts[level] += 1
  else
    @totals.push(root.val)
    @counts.push(1)
  end
  dfs(root.left, level + 1)
  dfs(root.right, level + 1)
end
