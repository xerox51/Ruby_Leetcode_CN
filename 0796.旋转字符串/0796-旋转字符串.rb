# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  i = 0
  len = s.length
  while i < len
    s = s[1, len - 1] + s[0]
    if s.eql?(goal)
      return true
    end
    i += 1
  end
  false
end
