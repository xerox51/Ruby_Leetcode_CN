# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {int}
def maxDepth(root)
  if root == nil
    return 0
  end
  maxChildDepth = 0
  children = root.children
  children.each do |child|
    childDepth = maxDepth(child)
    maxChildDepth = [maxChildDepth, childDepth].max
  end
  maxChildDepth + 1
end
