# @param {Integer[]} row
# @return {Integer}
def min_swaps_couples(row)
  len = row.length
  n = len / 2
  unionfind = Unionfind.new(n)
  (0...len).step(2) do |i|
    unionfind.union(row[i] / 2, row[i + 1] / 2)
  end
  n - unionfind.getcount()
end

class Unionfind
  attr_accessor :parent
  attr_accessor :count

  def getcount()
    return self.count
  end

  def initialize(n)
    self.count = n
    self.parent = Array.new(n, 0)
    for i in 0...n
      self.parent[i] = i
    end
  end

  def find(x)
    while x != self.parent[x]
      self.parent[x] = self.parent[self.parent[x]]
      x = self.parent[x]
    end
    return x
  end

  def union(x, y)
    rootx = find(x)
    rooty = find(y)
    if rootx == rooty
      return
    end
    self.parent[rootx] = rooty
    self.count -= 1
  end
end
