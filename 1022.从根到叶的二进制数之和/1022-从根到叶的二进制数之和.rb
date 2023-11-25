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
def sum_root_to_leaf(root)
  paths = []
  construct_paths(root, "", paths)
  total = 0
  paths.each do |item|
    total += item.to_i(2)
  end
  return total
end

def construct_paths(root, path, paths)
  if root != nil
    path += root.val.to_s
    if root.left == nil && root.right == nil
      paths.push(path)
    else
      construct_paths(root.left, path, paths)
      construct_paths(root.right, path, paths)
    end
  end
end
