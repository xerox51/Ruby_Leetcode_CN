# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def convert_bi_node(root)
  @head = TreeNode.new(-1)
  @prev = nil
  helper(root)
  return @head.right
end

def helper(root)
  if root == nil
    return
  end
  helper(root.left)
  if @prev == nil
    @prev = root
    @head.right = root
  else
    @prev.right = root
    @prev = root
  end
  root.left = nil
  helper(root.right)
end
