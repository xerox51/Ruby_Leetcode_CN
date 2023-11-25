# @param {String} s1
# @param {String} s2
# @return {Boolean}
def is_fliped_string(s1, s2)
  if s1.length != s2.length
    return false
  else
    if s1.length == s2.length and s1.length == 0
      return true
    end
    for i in 0...s1.length
      if s1[i, s1.length - i] + s1[0, i] == s2
        return true
      end
    end
    return false
  end
end
