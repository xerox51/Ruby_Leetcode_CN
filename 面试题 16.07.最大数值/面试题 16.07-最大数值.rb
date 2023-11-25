# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def maximum(a, b)
  ((a - b).abs + a + b) / 2
end
