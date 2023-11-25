# @param {Integer} shorter
# @param {Integer} longer
# @param {Integer} k
# @return {Integer[]}
def diving_board(shorter, longer, k)
  h = {}
  for i in 0..k
    m = i * shorter + (k - i) * longer
    unless h.has_key?(m)
      if m > 0
        h[m] = 1
      end
    end
  end
  n = h.keys.sort
  n
end
