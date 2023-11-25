# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0, head)
  len = getlength(head)
  cur = dummy
  for i in 1...len - n + 1
    cur = cur.next
  end
  cur.next = cur.next.next
  ans = dummy.next
  ans
end

def getlength(head)
  len = 0
  while head != nil
    len += 1
    head = head.next
  end
  len
end
