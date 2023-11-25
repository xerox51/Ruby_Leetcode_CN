# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def trainning_plan(l1, l2)
  if l1 == nil
    return l2
  elsif l2 == nil
    return l1
  elsif l1.val < l2.val
    l1.next = trainning_plan(l1.next, l2)
    return l1
  else
    l2.next = trainning_plan(l1, l2.next)
    return l2
  end
end
