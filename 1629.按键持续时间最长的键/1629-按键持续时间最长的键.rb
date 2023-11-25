# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  h = {}
  i = 0
  while i < release_times.length
    if i == 0
      h[keys_pressed[i]] = release_times[0]
    end
    if h.has_key?(keys_pressed[i])
      a = h[keys_pressed[i]]
      h[keys_pressed[i]] = [a, release_times[i] - release_times[i - 1]].max
      i += 1
    else
      h[keys_pressed[i]] = release_times[i] - release_times[i - 1]
      i += 1
    end
  end
  temp = h.values.max
  ans = []
  h.each do |key, value|
    if value == temp
      ans.push(key)
    end
  end
  p ans
  ans.sort.last
end
