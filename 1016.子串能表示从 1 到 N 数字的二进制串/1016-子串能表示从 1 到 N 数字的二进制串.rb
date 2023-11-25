# @param {String} s
# @param {Integer} n
# @return {Boolean}
def query_string(s, n)
  seen = Hash.new
  s = s.each_char.to_a.map { |item| item.to_i }
  s.each_with_index do |x, i|
    if x == 0
      next
    end
    j = i + 1
    while x <= n
      seen[x] = 1
      if j == s.length
        break
      end
      x = (x << 1) | s[j]
      j += 1
    end
  end
  seen.length == n
end
