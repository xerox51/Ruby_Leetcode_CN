# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
  if s.length > k
    l = sum_k(s, k)
    while l.length > k
      l = sum_k(l, k)
    end
    return l
  else
    s
  end
end

def sum_k(s, k)
  ans = ""
  n = s.length % k
  if n == 0
    (0...s.length).step(k) do |i|
      total = 0
      s[i, k].each_char do |c|
        total += c.to_i
      end
      ans << total.to_s
    end
    return ans
  else
    (0...s.length - n).step(k) do |i|
      total = 0
      s[i, k].each_char do |c|
        total += c.to_i
      end
      ans << total.to_s
    end
    m = s.length - n
    tail = 0
    (m..s.length - 1).each do |i|
      tail += s[i].to_i
    end
    ans << tail.to_s
    return ans
  end
end
