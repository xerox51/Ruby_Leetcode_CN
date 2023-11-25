# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def remove_zero_sum_sublists(head)
  prefix = 0
  seen = Hash.new
  seen[0] = dummy = ListNode.new(0)
  dummy.next = head
  while head != nil
    prefix += head.val
    seen[prefix] = head
    head = head.next
  end
  head = dummy
  prefix = 0
  while head != nil
    prefix += head.val
    head.next = seen[prefix].next
    head = head.next
  end
  dummy.next
end
