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
def trainning_plan(head)
  cur, pre = head, nil
  while cur != nil
    tmp = cur.next
    cur.next = pre
    pre = cur
    cur = tmp
  end
  return pre
end
