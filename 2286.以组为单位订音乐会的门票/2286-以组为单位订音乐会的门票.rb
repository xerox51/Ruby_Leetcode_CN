class BookMyShow

=begin
    :type n: Integer
    :type m: Integer
=end
  def initialize(n, m)
    @n = n
    @m = m
    @min = Array.new(n * 4, 0)
    @sum = Array.new(n * 4, 0)
  end

  def add(o, l, r, idx, val)
    if l == r
      @min[o] += val
      @sum[o] += val
      return
    end
    m = (l + r) / 2
    if idx <= m
      add(o * 2, l, m, idx, val)
    else
      add(o * 2 + 1, m + 1, r, idx, val)
    end
    @min[o] = [@min[o * 2], @min[o * 2 + 1]].min
    @sum[o] = @sum[o * 2] + @sum[o * 2 + 1]
  end

  def query_sum(o, l, r, l1, r1)
    if l1 <= l and r <= r1
      return @sum[o]
    end
    total = 0
    m = (l + r) / 2
    if l1 <= m
      total += query_sum(o * 2, l, m, l1, r1)
    end
    if r1 > m
      total += query_sum(o * 2 + 1, m + 1, r, l1, r1)
    end
    return total
  end

  def index(o, l, r, r1, val)
    if @min[o] > val
      return 0
    end
    if l == r
      return l
    end
    m = (l + r) / 2
    if @min[o * 2] <= val
      return index(o * 2, l, m, r1, val)
    end
    if m < r1
      return index(o * 2 + 1, m + 1, r, r1, val)
    end
    return 0
  end

=begin
    :type k: Integer
    :type max_row: Integer
    :rtype: Integer[]
=end
  def gather(k, max_row)
    i = index(1, 1, @n, max_row + 1, @m - k)
    if i == 0
      return []
    end
    seats = query_sum(1, 1, @n, i, i)
    add(1, 1, @n, i, k)
    return [i - 1, seats]
  end

=begin
    :type k: Integer
    :type max_row: Integer
    :rtype: Boolean
=end
  def scatter(k, max_row)
    if (max_row + 1) * @m - query_sum(1, 1, @n, 1, max_row + 1) < k
      return false
    end
    i = index(1, 1, @n, max_row + 1, @m - 1)
    while true
      left_seats = @m - query_sum(1, 1, @n, i, i)
      if k <= left_seats
        add(1, 1, @n, i, k)
        return true
      end
      k -= left_seats
      add(1, 1, @n, i, left_seats)
      i += 1
    end
  end
end

# Your BookMyShow object will be instantiated and called as such:
# obj = BookMyShow.new(n, m)
# param_1 = obj.gather(k, max_row)
# param_2 = obj.scatter(k, max_row)
