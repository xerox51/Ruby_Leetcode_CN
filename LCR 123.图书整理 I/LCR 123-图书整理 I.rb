# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Integer[]}
def reverse_print(head)
  stack = []
  while head != nil
    stack.push(head.val)
    head = head.next
  end
  stack.reverse
end
