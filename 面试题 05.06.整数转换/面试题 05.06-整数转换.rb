# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def convert_integer(a, b)
  diff = (a & 0xffffffff) ^ (b & 0xffffffff)
  diff.to_s(2).count("1")
end
