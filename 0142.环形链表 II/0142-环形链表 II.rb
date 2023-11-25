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
def detectCycle(head)
  fast, slow = head, head
  while true
    if not(fast != nil and fast.next != nil)
      return
    end
    fast, slow = fast.next.next, slow.next
    if fast == slow
      break
    end
  end
  fast = head
  while fast != slow
    fast, slow = fast.next, slow.next
  end
  fast
end
