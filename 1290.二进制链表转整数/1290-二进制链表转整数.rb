# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  ans = ""
  get_value(head, ans)
  return ans.to_i(2)
end

def get_value(head, ans)
  if head != nil
    ans << head.val.to_s
    get_value(head.next, ans)
  end
end
