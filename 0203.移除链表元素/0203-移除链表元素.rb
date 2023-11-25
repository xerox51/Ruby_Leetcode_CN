# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  if head == nil
    return head
  end
  head.next = remove_elements(head.next, val)
  if head.val == val
    return head.next
  end
  return head
end
