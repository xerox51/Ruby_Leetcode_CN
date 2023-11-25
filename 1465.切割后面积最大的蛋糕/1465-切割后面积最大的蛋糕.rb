# @param {Integer} h
# @param {Integer} w
# @param {Integer[]} horizontal_cuts
# @param {Integer[]} vertical_cuts
# @return {Integer}
def max_area(h, w, horizontal_cuts, vertical_cuts)
  horizontal_cuts.sort!
  vertical_cuts.sort!
  (calmax(horizontal_cuts, h) * calmax(vertical_cuts, w)) % (10 ** 9 + 7)
end

def calmax(arr, boardr)
  res, pre = 0, 0
  for i in arr
    res = [i - pre, res].max
    pre = i
  end
  [res, boardr - pre].max
end
