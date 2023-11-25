# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  small = ListNode.new
  smallhead = small
  large = ListNode.new
  largehead = large
  while head != nil
    if head.val < x
      small.next = head
      small = small.next
    else
      large.next = head
      large = large.next
    end
    head = head.next
  end
  large.next = nil
  small.next = largehead.next
  return smallhead.next
end
