# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  n = s.length
  l = 10
  bin = { "A" => 0, "C" => 1, "G" => 2, "T" => 3 }
  if n < l
    return []
  end
  ans = []
  x = 0
  for i in 0...l - 1
    x = (x << 2) | bin[s[i]]
  end
  cnt = {}
  for i in 0..n - l
    x = ((x << 2) | bin[s[i + l - 1]]) & ((1 << (l * 2)) - 1)
    if cnt[x] == nil
      cnt[x] = 1
    elsif cnt.has_key?(x)
      cnt[x] += 1
    end
    if cnt[x] == 2
      ans.push(s[i, l])
    end
  end
  ans
end
