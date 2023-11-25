# @param {String} s
# @param {String} target
# @return {Boolean}
def make_strings_equal(s, target)
  if s.include?("1")
    flag1 = true
  else
    flag1 = false
  end
  if target.include?("1")
    flag2 = true
  else
    flag2 = false
  end
  return flag1 == flag2
end
