# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer[]}
def next_larger_nodes(head)
  ans = []
  s = []
  cur = head
  idx = -1
  while cur != nil
    idx += 1
    ans.push(0)
    while (not s.empty?) and s[-1][0] < cur.val
      ans[s[-1][1]] = cur.val
      s.pop
    end
    s.push([cur.val, idx])
    cur = cur.next
  end
  ans
end
