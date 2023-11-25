# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_center
# @param {Integer} c_center
# @return {Integer[][]}
def all_cells_dist_order(rows, cols, r_center, c_center)
  tmp = []
  for i in 0...rows
    for j in 0...cols
      tmp.push([i, j])
    end
  end
  tmp.sort_by { |item| [(item[0] - r_center).abs + (item[1] - c_center).abs] }
end
