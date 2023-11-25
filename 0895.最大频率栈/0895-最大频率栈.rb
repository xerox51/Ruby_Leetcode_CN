class FreqStack
  def initialize()
    @freq = {}
    @group = {}
    @maxfreq = 0
  end

=begin
    :type val: Integer
    :rtype: Void
=end
  def push(val)
    if @freq.has_key?(val)
      @freq[val] += 1
    else
      @freq[val] = 1
    end
    if @group.has_key?(@freq[val])
      @group[@freq[val]].push(val)
    else
      @group[@freq[val]] = [val]
    end
    @maxfreq = [@maxfreq, @freq[val]].max
  end

=begin
    :rtype: Integer
=end
  def pop()
    val = @group[@maxfreq].pop
    @freq[val] -= 1
    if @group[@maxfreq].length == 0
      @maxfreq -= 1
    end
    return val
  end
end
