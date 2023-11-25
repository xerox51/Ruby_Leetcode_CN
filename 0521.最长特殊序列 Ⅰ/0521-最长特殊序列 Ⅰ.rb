# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  unless a.eql?(b)
    return [a.length, b.length].max
  end
  return -1
end
