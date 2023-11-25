# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  dummy = ListNode.new(0)
  dummy.next = head
  pre = dummy
  ending = dummy
  while ending.next != nil
    i = 0
    while i < k && ending != nil
      ending = ending.next
      i += 1
    end
    if ending == nil
      break
    end
    start = pre.next
    next_a = ending.next
    ending.next = nil
    pre.next = reverse(start)
    start.next = next_a
    pre = start
    ending = pre
  end
  dummy.next
end

def reverse(head)
  pre = nil
  curr = head
  while curr != nil
    next_a = curr.next
    curr.next = pre
    pre = curr
    curr = next_a
  end
  pre
end
