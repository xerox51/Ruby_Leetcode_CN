# @param {Integer[][]} trips
# @param {Integer} capacity
# @return {Boolean}
def car_pooling(trips, capacity)
  trips.sort_by! { |trip| [trip[1], trip[2]] }
  a = {}
  b = {}
  trips.each_with_index do |item, index|
    unless a.has_key?(item[1])
      a[item[1]] = item[0]
    else
      a[item[1]] += item[0]
    end
  end
  trips.each_with_index do |item, index|
    unless b.has_key?(item[2])
      b[item[2]] = -item[0]
    else
      b[item[2]] -= item[0]
    end
  end
  c = {}
  a.each_pair do |key, value|
    if b.has_key?(key)
      c[key] = a[key] + b[key]
    else
      c[key] = a[key]
    end
  end
  b.each_pair do |key, value|
    unless a.has_key?(key)
      c[key] = b[key]
    end
  end
  d = c.keys.sort
  total = 0
  d.each do |item|
    total += c[item]
    if total > capacity
      return false
    end
  end
  true
end
