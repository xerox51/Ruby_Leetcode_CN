# @param {Integer} n
# @return {Integer}
def count_triples(n)
  res = 0
  for a in 1..n
    for b in 1..n
      c = ((a * a + b * b + 1.0) ** 0.5).floor
      if c <= n and c * c == a * a + b * b
        res += 1
      end
    end
  end
  res
end
