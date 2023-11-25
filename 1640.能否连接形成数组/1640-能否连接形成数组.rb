# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  index = {}
  for i in 0...pieces.length
    index[pieces[i][0]] = i
  end
  i = 0
  while i < arr.length
    unless index.has_key?(arr[i])
      return false
    end
    p = pieces[index[arr[i]]]
    if arr[i, p.length] != p
      return false
    end
    i += p.length
  end
  return true
end
