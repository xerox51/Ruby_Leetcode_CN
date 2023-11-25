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
# @param {Integer[]} to_delete
# @return {TreeNode[]}
def del_nodes(root, to_delete)
  to_delete_hash = to_delete.to_h { |item| [item, 1] }
  roots = []
  dfs(root, true, to_delete_hash, roots)
  roots
end

def dfs(node, is_root, to_delete_hash, roots)
  if node == nil
    return nil
  end
  if to_delete_hash.has_key?(node.val)
    delete = true
  else
    delete = false
  end
  node.left = dfs(node.left, delete, to_delete_hash, roots)
  node.right = dfs(node.right, delete, to_delete_hash, roots)
  if delete
    return nil
  else
    if is_root
      roots.push(node)
    end
    return node
  end
end
