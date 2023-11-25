# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  points.sort_by! { |item| item[0] ** 2 + item[1] ** 2 }
  points[0, k]
end
