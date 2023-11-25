# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  helper(0, nums.length - 1, nums)
end

def helper(left, right, nums)
  if left > right
    return nil
  end
  mid = (left + right) / 2
  root = TreeNode.new(nums[mid])
  root.left = helper(left, mid - 1, nums)
  root.right = helper(mid + 1, right, nums)
  return root
end
