# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  visited = {}
  temp = headA
  while temp != nil
    visited[temp] = 1
    temp = temp.next
  end
  temp = headB
  while temp != nil
    if visited.has_key?(temp)
      return temp
    end
    temp = temp.next
  end
  return nil
end
