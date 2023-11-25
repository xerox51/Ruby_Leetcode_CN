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
def swap_pairs(head)
  pre = ListNode.new(0)
  pre.next = head
  temp = pre
  while temp.next != nil && temp.next.next != nil
    start = temp.next
    ending = temp.next.next
    temp.next = ending
    start.next = ending.next
    ending.next = start
    temp = start
  end
  pre.next
end
