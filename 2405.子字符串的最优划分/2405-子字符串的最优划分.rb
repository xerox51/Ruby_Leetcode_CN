# @param {String} s
# @return {Integer}
def partition_string(s)
  h = {}
  ans = 0
  for i in 0...s.length
    if h.has_key?(s[i])
      h.clear
      ans += 1
    end
    unless h.has_key?(s[i])
      h[s[i]] = i
    end
  end
  ans + 1
end
