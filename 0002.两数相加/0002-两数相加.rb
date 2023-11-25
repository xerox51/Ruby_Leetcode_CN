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
def add_two_numbers(l1, l2)
  tolistnode((to_num(l1) + (to_num(l2))).to_s)
end

def to_num(l)
  listnum = []
  while l != nil
    listnum.push(l.val.to_s)
    l = l.next
  end
  listnum.reverse.join.to_i
end

def tolistnode(n)
  l = ListNode.new(n[n.length - 1].to_i)
  l_tail = l
  for i in 1...n.length
    l_tail.next = ListNode.new(n[n.length - 1 - i].to_i)
    l_tail = l_tail.next
  end
  l
end
