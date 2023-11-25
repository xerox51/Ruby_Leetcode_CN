# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  if s1.length != s2.length
    return false
  elsif s1 == s2
    return true
  else
    ans = {}
    for i in 0...s1.length
      if s1[i] != s2[i]
        ans[i] = s2[i]
      end
      if ans.keys.length > 2
        return false
      end
    end
    if ans.keys.length == 1
      return false
    else
      if s1[ans.keys[1]] == ans.values[0]
        if s1[ans.keys[0]] == ans.values[1]
          return true
        end
      end
      return false
    end
  end
end
