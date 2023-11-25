# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  n = n.to_s(2)
  l = ""
  for i in 0...n.length
    if n[i] == "1"
      l << "0"
    else
      l << "1"
    end
  end
  l.to_i(2)
end
