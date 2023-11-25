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
def is_palindrome(head)
  vals = []
  current_node = head
  while current_node != nil
    vals.push(current_node.val)
    current_node = current_node.next
  end
  vals == vals.reverse
end
