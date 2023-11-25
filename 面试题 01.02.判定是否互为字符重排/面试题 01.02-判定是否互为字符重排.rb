# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_permutation(s1, s2)
  if s1.length != s2.length
    return false
  elsif s1.length == 0
    return true
  else
    for i in 0...s1.length
      if (s1.count s1[i]).to_i != (s2.count s1[i]).to_i
        return false
      end
    end
  end
  return true
end
