# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  h = {}
  for i in 0...mat.length
    if h.has_key?(mat[i])
      h[mat[i]].push(i)
    end
    unless h.has_key?(mat[i])
      h[mat[i]] = [i]
    end
  end
  ans = h.keys.sort_by { |element| element.count(1) }
  temp = []
  for i in 0...ans.length
    temp.concat(h[ans[i]])
  end
  return temp[0, k]
end
