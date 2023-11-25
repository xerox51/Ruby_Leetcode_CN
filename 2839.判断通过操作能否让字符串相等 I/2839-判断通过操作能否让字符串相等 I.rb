# @param {String} s1
# @param {String} s2
# @return {Boolean}
def can_be_equal(s1, s2)
  if s1 == s2
    return true
  else
    s = ""
    s << s1[0]
    s << s1[3]
    s << s1[2]
    s << s1[1]
    t = ""
    t << s1[2]
    t << s1[1]
    t << s1[0]
    t << s1[3]
    x = ""
    x << s1[2]
    x << s1[3]
    x << s1[0]
    x << s1[1]
    return s == s2 || t == s2 || x == s2
  end
end
