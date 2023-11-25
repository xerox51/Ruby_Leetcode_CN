# @param {String[]} messages
# @param {String[]} senders
# @return {String}
def largest_word_count(messages, senders)
  h = {}
  for i in 0...messages.length
    a = senders[i]
    unless h.has_key?(a)
      h[a] = messages[i].split.length
      next
    end
    if h.has_key?(a)
      h[a] += messages[i].split.length
      next
    end
  end
  ans = h.values.max
  temp = []
  h.each_pair do |key, value|
    if h[key] == ans
      temp.push(key)
    end
  end
  return temp.sort.last
end
