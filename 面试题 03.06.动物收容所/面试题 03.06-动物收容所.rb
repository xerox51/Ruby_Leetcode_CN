class AnimalShelf
  def initialize()
    @h1 = {}
    @h2 = {}
    @cnt = 0
  end

=begin
    :type animal: Integer[]
    :rtype: Void
=end
  def enqueue(animal)
    @cnt += 1
    if animal[1] == 0
      @h1[animal[0]] = @cnt
    else
      @h2[animal[0]] = @cnt
    end
  end

=begin
    :rtype: Integer[]
=end
  def dequeue_any()
    if @h1.length != 0 and @h2.length != 0
      x, y = @h1.values.min, @h2.values.min
      a = [x, y].min
      if x == a
        b = @h1.key(a)
        @h1.delete(b)
        return [b, 0]
      else
        b = @h2.key(a)
        @h2.delete(b)
        return [b, 1]
      end
    elsif @h1.length != 0 and @h2.length == 0
      a = @h1.key(@h1.values.min)
      @h1.delete(a)
      return [a, 0]
    elsif @h1.length == 0 and @h2.length != 0
      a = @h2.key(@h2.values.min)
      @h2.delete(a)
      return [a, 1]
    else
      return [-1, -1]
    end
  end

=begin
    :rtype: Integer[]
=end
  def dequeue_dog()
    if @h2.length > 0
      x = @h2.values.min
      a = @h2.key(x)
      @h2.delete(a)
      return [a, 1]
    else
      return [-1, -1]
    end
  end

=begin
    :rtype: Integer[]
=end
  def dequeue_cat()
    if @h1.length > 0
      x = @h1.values.min
      a = @h1.key(x)
      @h1.delete(a)
      return [a, 0]
    else
      return [-1, -1]
    end
  end
end

# Your AnimalShelf object will be instantiated and called as such:
# obj = AnimalShelf.new()
# obj.enqueue(animal)
# param_2 = obj.dequeue_any()
# param_3 = obj.dequeue_dog()
# param_4 = obj.dequeue_cat()
