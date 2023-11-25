class LockingTree

=begin
    :type parent: Integer[]
=end
  def initialize(parent)
    @n = parent.length
    @locked = Array.new(@n, -1)
    @parent = parent
    @children = Array.new(@n) { Array.new }
    for i in 0...@n
      p = parent[i]
      if p != -1
        @children[p].push(i)
      end
    end
  end

=begin
    :type num: Integer
    :type user: Integer
    :rtype: Boolean
=end
  def lock(num, user)
    if @locked[num] == -1
      @locked[num] = user
      return true
    else
      return false
    end
  end

=begin
    :type num: Integer
    :type user: Integer
    :rtype: Boolean
=end
  def unlock(num, user)
    if @locked[num] == user
      @locked[num] = -1
      return true
    else
      return false
    end
  end

=begin
    :type num: Integer
    :type user: Integer
    :rtype: Boolean
=end
  def upgrade(num, user)
    res = (@locked[num] == -1) && (not haslockedancestor(num)) && checkandunlockdescendant(num)
    if res
      @locked[num] = user
    end
    return res
  end

  def haslockedancestor(num)
    num = @parent[num]
    while num != -1
      if @locked[num] != -1
        return true
      else
        num = @parent[num]
      end
    end
    return false
  end

  def checkandunlockdescendant(num)
    res = @locked[num] != -1
    @locked[num] = -1
    for child in @children[num]
      res = res | checkandunlockdescendant(child)
    end
    return res
  end
end

# Your LockingTree object will be instantiated and called as such:
# obj = LockingTree.new(parent)
# param_1 = obj.lock(num, user)
# param_2 = obj.unlock(num, user)
# param_3 = obj.upgrade(num, user)
