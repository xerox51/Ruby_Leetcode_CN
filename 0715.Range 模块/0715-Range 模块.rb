class RangeModule
  def initialize()
    @root = Node.new
  end

=begin
    :type left: Integer
    :type right: Integer
    :rtype: Void
=end
  def add_range(left, right)
    update(@root, 1, 10 ** 9, left, right - 1, 1)
  end

=begin
    :type left: Integer
    :type right: Integer
    :rtype: Boolean
=end
  def query_range(left, right)
    query(@root, 1, 10 ** 9, left, right - 1)
  end

=begin
    :type left: Integer
    :type right: Integer
    :rtype: Void
=end
  def remove_range(left, right)
    update(@root, 1, 10 ** 9, left, right - 1, -1)
  end
end

# Your RangeModule object will be instantiated and called as such:
# obj = RangeModule.new()
# obj.add_range(left, right)
# param_2 = obj.query_range(left, right)
# obj.remove_range(left, right)

class Node
  attr_accessor :left
  attr_accessor :right
  attr_accessor :cover
  attr_accessor :add
end

def update(node, start, ending, l, r, val)
  if l <= start && ending <= r
    if val == 1
      node.cover = true
    else
      node.cover = false
    end
    node.add = val
    return
  end
  mid = (start + ending) >> 1
  pushdown(node, mid - start + 1, ending - mid)
  if l <= mid
    update(node.left, start, mid, l, r, val)
  end
  if r > mid
    update(node.right, mid + 1, ending, l, r, val)
  end
  pushup(node)
end

def query(node, start, ending, l, r)
  if l <= start && ending <= r
    return node.cover
  end
  mid = (start + ending) >> 1
  pushdown(node, mid - start + 1, ending - mid)
  ans = true
  if l <= mid
    ans = ans && query(node.left, start, mid, l, r)
  end
  if r > mid
    ans = ans && query(node.right, mid + 1, ending, l, r)
  end
  return ans
end

def pushup(node)
  node.cover = node.left.cover && node.right.cover
end

def pushdown(node, leftnum, rightnum)
  if node.left == nil
    node.left = Node.new
  end
  if node.right == nil
    node.right = Node.new
  end
  if node.add == 0
    return
  end
  node.left.cover = node.add == 1
  node.right.cover = node.add == 1
  node.left.add = node.add
  node.right.add = node.add
  node.add = 0
end
