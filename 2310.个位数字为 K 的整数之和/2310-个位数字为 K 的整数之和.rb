# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def minimum_numbers(num, k)
  if num == 0
    return 0
  elsif num < k
    return -1
  elsif num == k
    return 1
  elsif k == 0 and num.to_s[-1].to_i > k
    return -1
  else
    c = num.to_s[-1].to_i
    d = k
    i = 1
    while c != d.to_s[-1].to_i
      d += k
      if d > num
        break
      end
      i += 1
    end
    if d > num
      return -1
    else
      return i
    end
  end
end
