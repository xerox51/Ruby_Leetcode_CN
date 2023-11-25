# @param {String} s
# @return {Integer}
def num_decodings(s)
  n = s.length
  a, b, c = 0, 1, nil
  for i in 1..n
    c = 0
    if s[i - 1] != "0"
      c += b
    end
    if i > 1 && s[i - 2] != "0" && (s[i - 2].ord - "0".ord) * 10 + s[i - 1].ord - "0".ord <= 26
      c += a
    end
    a, b = b, c
  end
  c
end
