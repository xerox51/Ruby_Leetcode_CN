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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  @arr = []
  inorder(root)
  left, right = 0, @arr.length - 1
  while left < right
    total = @arr[left] + @arr[right]
    if total == k
      return true
    end
    if total < k
      left += 1
    else
      right -= 1
    end
  end
  false
end

def inorder(node)
  if node != nil
    inorder(node.left)
    @arr.push(node.val)
    inorder(node.right)
  end
end
