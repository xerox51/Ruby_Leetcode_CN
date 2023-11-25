# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
  ans = []
  h = {}
  for i in low_limit..high_limit
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
  m[-1].length
end
