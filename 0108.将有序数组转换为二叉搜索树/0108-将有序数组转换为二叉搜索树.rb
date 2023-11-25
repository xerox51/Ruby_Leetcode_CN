# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return helper(nums, 0, nums.length - 1)
end

def helper(nums, left, right)
  if left > right
    return nil
  end
  mid = (left + right) / 2
  root = TreeNode.new(nums[mid])
  root.left = helper(nums, left, mid - 1)
  root.right = helper(nums, mid + 1, right)
  return root
end
