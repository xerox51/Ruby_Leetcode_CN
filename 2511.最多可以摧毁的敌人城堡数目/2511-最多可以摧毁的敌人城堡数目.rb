# @param {Integer[]} forts
# @return {Integer}
def capture_forts(forts)
  if forts.all? { |item| item != 1 }
    return 0
  else
    ans = 0
    for i in 0...forts.length
      if forts[i] == 1
        ans = [find_up(forts, i), find_down(forts, i), ans].max
      end
    end
    return ans
  end
end

def find_up(forts, i)
  ans = 0
  for j in i + 1...forts.length
    if forts[j] == 0
      next
    elsif forts[j] == 1
      break
    else
      ans = [ans, j - i - 1].max
      break
    end
  end
  return ans
end

def find_down(forts, i)
  ans = 0
  (i - 1).downto(0) do |j|
    if forts[j] == 0
      next
    elsif forts[j] == 1
      break
    else
      ans = [ans, i - j - 1].max
      break
    end
  end
  return ans
end
