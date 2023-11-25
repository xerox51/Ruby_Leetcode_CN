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
# @return {Integer[]}
def get_all_elements(root1, root2)
  arr1 = []
  arr2 = []
  get_all(arr1, root1).concat(get_all(arr2, root2)).sort
end

def get_all(arr, root)
  if root != nil
    arr.push(root.val)
    get_all(arr, root.left)
    get_all(arr, root.right)
  end
  arr
end
