# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  j = 0
  count = 0
  while j < strs[0].length
    i = 0
    while i < strs.length
      if i < strs.length - 1 and strs[i][j] > strs[i + 1][j]
        count += 1
        break
      end
      i += 1
    end
    j += 1
  end
  count
end
