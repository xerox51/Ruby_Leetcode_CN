def buddy_strings(s, goal)
  if s.length != goal.length
    return false
  end
  if s == goal
    flag = s.each_char.to_a.uniq.any? { |element| s.count(element) > 1 }
    if flag
      return true
    else
      return false
    end
  end
  if s != goal
    counts = 0
    h = {}
    for i in 0...s.length
      if s[i] != goal[i]
        counts += 1
        h[i] = s[i]
      end
      if counts > 2
        return false
      end
    end
    if counts == 1
      return false
    end
    if h[h.keys[0]] != goal[h.keys[1]] or h[h.keys[1]] != goal[h.keys[0]]
      return false
    end
    if h[h.keys[0]] == goal[h.keys[1]]
      if h[h.keys[1]] == goal[h.keys[0]]
        return true
      else
        return false
      end
    end
  end
end
