# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  merge(lists, 0, lists.length - 1)
end

def mergetwolists(a, b)
  if (not a != nil) || (not b != nil)
    if a != nil
      return a
    else
      return b
    end
  end
  head = ListNode.new
  tail = head
  aptr = a
  bptr = b
  while aptr != nil && bptr != nil
    if aptr.val < bptr.val
      tail.next = aptr
      aptr = aptr.next
    else
      tail.next = bptr
      bptr = bptr.next
    end
    tail = tail.next
  end
  if aptr != nil
    tail.next = aptr
  else
    tail.next = bptr
  end
  head.next
end

def merge(lists, l, r)
  if l == r
    return lists[l]
  end
  if l > r
    return nil
  end
  mid = (l + r) >> 1
  return mergetwolists(merge(lists, l, mid), merge(lists, mid + 1, r))
end
