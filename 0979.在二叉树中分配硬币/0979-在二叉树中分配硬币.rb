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
def distribute_coins(root)
  @move = 0

  def dfs(root)
    moveleft = 0
    moveright = 0
    if root == nil
      return 0
    end
    if root.left != nil
      moveleft = dfs(root.left)
    end
    if root.right != nil
      moveright = dfs(root.right)
    end
    @move += moveleft.abs + moveright.abs
    return moveleft + moveright + root.val - 1
  end

  dfs(root)
  @move
end
