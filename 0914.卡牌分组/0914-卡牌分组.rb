# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  h = {}
  for i in 0...deck.length
    if h.has_key?(deck[i])
      h[deck[i]] += 1
    else
      h[deck[i]] = 1
    end
  end
  if h.values.min == 1
    return false
  else
    temp = h.values.min
    a = []
    for i in 2..temp
      if temp % i == 0
        a.push(i)
      end
    end
    arr = h.values
    for i in a
      if arr.all? { |item| item % i == 0 }
        return true
      end
    end
    return false
  end
end
