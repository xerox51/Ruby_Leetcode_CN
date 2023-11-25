# @param {String} s
# @param {Integer[]} indices
# @param {String[]} sources
# @param {String[]} targets
# @return {String}
def find_replace_string(s, indices, sources, targets)
  n, m = s.length, indices.length
  ops = {}
  for i in 0...indices.length
    if ops.has_key?(indices[i])
      ops[indices[i]].push(i)
    else
      ops[indices[i]] = [i]
    end
  end
  ans = []
  i = 0
  while i < n
    succeed = false
    if ops.has_key?(i)
      for pt in ops[i]
        if s[i, sources[pt].length] == sources[pt]
          succeed = true
          ans.push(targets[pt])
          i += sources[pt].length
          break
        end
      end
    end
    if not succeed
      ans.push(s[i])
      i += 1
    end
  end
  ans.join
end
