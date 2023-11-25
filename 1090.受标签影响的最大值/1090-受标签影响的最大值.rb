# @param {Integer[]} values
# @param {Integer[]} labels
# @param {Integer} num_wanted
# @param {Integer} use_limit
# @return {Integer}
def largest_vals_from_labels(values, labels, num_wanted, use_limit)
  h = {}
  values.each_with_index do |item, index|
    if h.has_key?([item, labels[index]])
      h[[item, labels[index]]] += 1
    else
      h[[item, labels[index]]] = 1
    end
  end
  h = h.to_a.sort_by { |item| [-item[0][0]] }
  total = 0
  j = 0
  m = {}
  h.each do |item|
    if m.has_key?(item[0][1])
      m[item[0][1]] += item[1]
    else
      m[item[0][1]] = item[1]
    end
    if m[item[0][1]] <= use_limit and j + m[item[0][1]] <= num_wanted
      total += item[0][0] * item[1]
      j += item[1]
    elsif m[item[0][1]] <= use_limit and j + m[item[0][1]] > num_wanted
      t = [item[1], num_wanted - j].min
      total += item[0][0] * t
      j += t
    else
      t = [item[1], use_limit - (m[item[0][1]] - item[1])].min
      if t > 0 and j + t <= num_wanted
        total += t * item[0][0]
        j += t
      end
    end
    if j >= num_wanted
      break
    end
  end
  total
end
