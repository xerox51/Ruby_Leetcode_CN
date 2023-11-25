# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  res = 0
  tmp = tiles.each_char.to_a
  l = tmp.length
  1.upto(l) do |i|
    res += tmp.permutation(i).uniq.length
  end
  res
end
