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
  s1, s2 = [], []
  while l1 != nil
    s1.push(l1.val)
    l1 = l1.next
  end
  while l2 != nil
    s2.push(l2.val)
    l2 = l2.next
  end
  ans = nil
  carry = 0
  while (not s1.empty?) or (not s2.empty?) or carry != 0
    if s1.empty?
      a = 0
    else
      a = s1.pop
    end
    if s2.empty?
      b = 0
    else
      b = s2.pop
    end
    cur = a + b + carry
    carry = cur / 10
    cur = cur % 10
    curnode = ListNode.new(cur)
    curnode.next = ans
    ans = curnode
  end
  ans
end
