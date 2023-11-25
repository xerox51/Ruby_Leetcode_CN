class AllOne
  def initialize()
    @set = {}
  end

  def inc(key)
    unless @set.has_key?(key)
      @set[key] = 0
    else
      @set[key] += 1
    end
  end

  def dec(key)
    if @set[key] == 0
      @set.delete(key)
    else
      @set[key] -= 1
    end
  end

  def get_max_key()
    unless @set.empty?
      return @set.key(@set.values.max)
    else
      return ""
    end
  end

  def get_min_key()
    unless @set.empty?
      return @set.key(@set.values.min)
    else
      return ""
    end
  end
end
