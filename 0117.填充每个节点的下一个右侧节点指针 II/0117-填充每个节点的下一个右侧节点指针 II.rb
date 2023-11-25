# Definition for a Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
def connect(root)
  if root == nil
    return nil
  end
  start = root
  while start != nil
    @last = nil
    @nextstart = nil
    p = start
    while p != nil
      if p.left != nil
        handle(p.left)
      end
      if p.right != nil
        handle(p.right)
      end
      p = p.next
    end
    start = @nextstart
  end
  root
end

def handle(p)
  if @last != nil
    @last.next = p
  end
  if @nextstart == nil
    @nextstart = p
  end
  @last = p
end
