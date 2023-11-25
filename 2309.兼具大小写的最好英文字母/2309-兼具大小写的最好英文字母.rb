# @param {String} s
# @return {String}
def greatest_letter(s)
  h = {}
  for i in 0...s.length
    if h.has_key?(s[i].swapcase)
      h[s[i]] = true
    end
    unless h.has_key?(s[i])
      h[s[i]] = false
    end
  end
  ans = []
  h.each_pair do |key, value|
    if value == true
      if key.upcase == nil
        ans.push(key)
      else
        ans.push(key.upcase)
      end
    end
  end
  if ans.empty?
    return ""
  else
    return ans.sort.last
  end
end
