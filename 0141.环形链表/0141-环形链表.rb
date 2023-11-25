# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  seen = Hash.new
  while head
    if seen.has_key?(head)
      return true
    end
    seen[head] = 1
    head = head.next
  end
  return false
end
