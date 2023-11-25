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
# @return {Integer[][]}
def decorate_record(root)
  if root == nil then return [] end
  res, queue = [], []
  queue.push(root)
  while not queue.empty?
    tmp = []
    queue.length.times {
      node = queue.shift
      tmp.push(node.val)
      if node.left != nil then queue.push(node.left) end
      if node.right != nil then queue.push(node.right) end
    }
    res.push(tmp)
  end
  res
end
