# @param {String} s
# @param {Integer[][]} queries
# @return {Boolean[]}
def can_make_pali_queries(s, queries)
  n = s.length
  count = Array.new(n + 1, 0)
  0.upto(n - 1) do |i|
    count[i + 1] = count[i] ^ (1 << (s[i].ord - "a".ord))
  end
  res = []
  for item in queries
    bits = (count[item[1] + 1] ^ count[item[0]]).to_s(2).count("1")
    res.push(bits <= item[2] * 2 + 1)
  end
  res
end
