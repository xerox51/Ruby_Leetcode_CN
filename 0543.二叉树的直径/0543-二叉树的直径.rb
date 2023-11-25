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
def diameter_of_binary_tree(root)
  @ans = 1

  def depth(node)
    if node == nil
      return 0
    else
      l = depth(node.left)
      r = depth(node.right)
      @ans = [@ans, l + r + 1].max
      return [l, r].max + 1
    end
  end

  depth(root)
  return @ans - 1
end
