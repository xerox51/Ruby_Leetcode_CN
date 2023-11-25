# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {Integer}
def kth_to_last(head, k)
  pre, cur = head, head
  k.times do
    cur = cur.next
  end
  while cur != nil
    pre, cur = pre.next, cur.next
  end
  pre.val
end
