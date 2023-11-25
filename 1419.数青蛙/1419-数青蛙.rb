# @param {String} croak_of_frogs
# @return {Integer}
def min_number_of_frogs(croak_of_frogs)
  if croak_of_frogs.length % 5 != 0
    return -1
  end
  res, frog_num = 0, 0
  cnt = Array.new(4, 0)
  mp = { "c" => 0, "r" => 1, "o" => 2, "a" => 3, "k" => 4 }
  for i in 0...croak_of_frogs.length
    t = mp[croak_of_frogs[i]]
    if t == 0
      cnt[t] += 1
      frog_num += 1
      if frog_num > res
        res = frog_num
      end
    else
      if cnt[t - 1] == 0
        return -1
      end
      cnt[t - 1] -= 1
      if t == 4
        frog_num -= 1
      else
        cnt[t] += 1
      end
    end
  end
  if frog_num > 0
    return -1
  end
  return res
end
