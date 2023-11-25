# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
  ans = {}
  for i in 0...s.length
    if ans.has_key?(s[i])
      temp = ans[s[i]]
      ans[s[i]] = i - temp - 1
    else
      ans[s[i]] = i
    end
  end
  d = {}
  for j in 0...26
    unless ans.has_key?((97 + j).chr)
      ans[(97 + j).chr] = distance[j]
    end
    d[(97 + j).chr] = distance[j]
  end
  ans.hash == d.hash
end
