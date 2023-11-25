# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  ans = []
  h = {}
  for i in 1..n
    temp = i.to_s
    total = 0
    for j in 0...temp.length
      total += temp[j].to_i
    end
    if h.has_key?(total)
      h[total].push(i)
    else
      h[total] = [i]
    end
  end
  m = h.values.sort_by { |item| item.length }
  n = h.select { |key, value| value.length == m[-1].length }
  n.length
end
