# @param {String} start
# @param {String} target
# @return {Boolean}
def can_change(start, target)
  n = start.length
  i, j = 0, 0
  while i < n and j < n
    while i < n and start[i] == "_"
      i += 1
    end
    while j < n and target[j] == "_"
      j += 1
    end
    if i < n and j < n
      if start[i] != target[j]
        return false
      end
      c = start[i]
      if (c == "L" and i < j) or (c == "R" and i > j)
        return false
      end
      i += 1
      j += 1
    end
  end
  while i < n
    if start[i] != "_"
      return false
    end
    i += 1
  end
  while j < n
    if target[j] != "_"
      return false
    end
    j += 1
  end
  return true
end
