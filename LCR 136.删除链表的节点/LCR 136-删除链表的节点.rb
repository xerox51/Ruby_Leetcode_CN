# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def delete_node(head, val)
  if head.val == val
    return head.next
  end
  pre, cur = head, head.next
  while cur != nil and cur.val != val
    pre, cur = cur, cur.next
  end
  if cur != nil
    pre.next = cur.next
  end
  head
end
