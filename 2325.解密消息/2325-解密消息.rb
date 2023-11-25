# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key, message)
  ans = key.split.join
  h = {}
  for i in 0...ans.length
    if h.has_key?(ans[i])
      next
    end
    if h.empty? and not h.has_key?(ans[i])
      h[ans[i]] = "a"
    end
    if not h.has_key?(ans[i]) and not h.empty?
      h[ans[i]] = (h.values.last.ord + 1).chr
    end
  end
  temp = ""
  for j in 0...message.length
    if message[j] == " "
      temp << " "
    else
      temp << h[message[j]]
    end
  end
  return temp
end
