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
# @return {ListNode}
def get_kth_from_end(head, k)
  former, latter = head, head
  k.times do
    former = former.next
  end
  while former != nil
    former, latter = former.next, latter.next
  end
  latter
end
