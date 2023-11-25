# @param {String} s
# @param {Integer} a
# @param {Integer} b
# @return {String}
def find_lex_smallest_string(s, a, b)
  @n = s.length
  ans = s.dup
  t = s + s
  @ga = 10.gcd(a)
  gb = @n.gcd(b)

  def add_d(p, pos)
    lo = p[pos].ord - "0".ord
    added = 0
    (@ga...10).step(@ga) do |i|
      c = (p[pos].ord - "0".ord + i) % 10
      if c < lo
        lo = c
        added = i
      end
    end
    if added != 0
      (pos...@n).step(2) do |i|
        p[i] = ("0".ord + (p[i].ord - "0".ord + added) % 10).chr
      end
    end
  end

  (0...@n).step(gb) do |i|
    p = t[i, @n]
    add_d(p, 1)
    if gb % 2 == 1
      add_d(p, 0)
    end
    ans = [ans, p].min
  end
  ans
end
