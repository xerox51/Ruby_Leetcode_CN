# @param {Integer} n
# @return {String}
def thousand_separator(n)
  s = ""
  m = n.to_s
  if m.length <= 3
    return m
  else
    head = m.length % 3
    if head == 0
      (0...m.length).step(3) do |i|
        s << m[i, 3]
        s << "."
      end
      return s[0, s.length - 1]
    else
      s << m[0, head]
      s << "."
      (head...m.length).step(3) do |i|
        s << m[i, 3]
        s << "."
      end
      return s[0, s.length - 1]
    end
  end
end
