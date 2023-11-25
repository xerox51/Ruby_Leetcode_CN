# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
  ans = []
  queries.each do |item|
    temp = 0
    points.each do |it|
      if (item[0] - it[0]) ** 2 + (item[1] - it[1]) ** 2 <= item[2] ** 2
        temp += 1
      end
    end
    ans.push(temp)
  end
  ans
end
