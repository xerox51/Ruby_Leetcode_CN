# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def remove_duplicate_nodes(head)
  if head == nil
    return head
  end
  occurred = {}
  occurred[head.val] = 1
  pos = head
  while pos.next != nil
    cur = pos.next
    unless occurred.has_key?(cur.val)
      occurred[cur.val] = 1
      pos = pos.next
    else
      pos.next = pos.next.next
    end
  end
  head
end
