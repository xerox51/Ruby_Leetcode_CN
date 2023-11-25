# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  n = blocks.length
  cnt = 0
  for i in 0...k
    if blocks[i] == "W"
      cnt += 1
    end
  end
  ans = cnt
  i = 1
  while i + k - 1 < n
    if blocks[i - 1] == "W"
      cnt -= 1
    end
    if blocks[i + k - 1] == "W"
      cnt += 1
    end
    ans = [ans, cnt].min
    i += 1
  end
  ans
end
