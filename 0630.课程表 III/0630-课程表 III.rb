# @param {Integer[][]} courses
# @return {Integer}
def schedule_course(courses)
  courses.sort_by! { |item| item[1] }
  q = PriorityQueue.new
  total = 0
  courses.each do |c|
    d, e = c[0], c[1]
    total += d
    q << d
    if total > e
      total -= q.pop
    end
  end
  q.size
end

class PriorityQueue
  attr_reader :elements, :size

  def initialize
    @elements = [nil]
    @size = nil
  end

  def size
    @size = (@elements.size - 1)
  end

  def isEmpty?
    return @size == 0
  end

  # compares <= 1 + logN
  def <<(element)
    @elements << element
    size
    swim(size)
  end

  # compares <= 2LogN
  def pop
    max = @elements[1]
    exch(1, size)
    @elements.pop
    size
    sink(1)
    return max
  end

  private

  def sink(k)
    # j = child
    while 2 * k <= size
      j = 2 * k
      # get the largest child
      if j < size && less?(j, j + 1)
        j += 1
      end
      #if parent not < largest child
      if !less?(k, j)
        break
      end
      exch(k, j)
      k = j
    end
  end

  private

  def swim(k)
    # while not root and k's parent < k
    while k > 1 && less?(k / 2, k)
      exch(k, k / 2)
      k = k / 2
    end
  end

  private

  def less?(i, j)
    return (@elements[i] < @elements[j])
  end

  private

  def exch(i, j)
    @elements[i], @elements[j] = @elements[j], @elements[i]
  end
end
