# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  if head == nil
    return
  end
  vec = []
  node = head
  while node != nil
    vec.push(node)
    node = node.next
  end
  i, j = 0, vec.length - 1
  while i < j
    vec[i].next = vec[j]
    i += 1
    if i == j
      break
    end
    vec[j].next = vec[i]
    j -= 1
  end
  vec[i].next = nil
end
