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
def delete_duplicates(head)
  cur = head
  while cur != nil && cur.next != nil
    if cur.val == cur.next.val
      cur.next = cur.next.next
    else
      cur = cur.next
    end
  end
  head
end
