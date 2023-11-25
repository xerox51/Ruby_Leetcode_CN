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
# @param {Integer} limit
# @return {TreeNode}
def sufficient_subset(root, limit)
  def check_stufficient_leaf(node, total, limit)
    if node == nil
      return false
    end
    if node.left == nil and node.right == nil
      return node.val + total >= limit
    end
    have_sufficient_left = check_stufficient_leaf(node.left, total + node.val, limit)
    have_sufficient_right = check_stufficient_leaf(node.right, total + node.val, limit)
    unless have_sufficient_left
      node.left = nil
    end
    unless have_sufficient_right
      node.right = nil
    end
    return have_sufficient_left || have_sufficient_right
  end

  have_sufficient = check_stufficient_leaf(root, 0, limit)
  if have_sufficient
    return root
  else
    return nil
  end
end
