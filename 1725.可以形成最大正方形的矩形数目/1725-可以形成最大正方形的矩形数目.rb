# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  tmp = []
  rectangles.each do |item|
    a = [item[0], item[1]].min
    tmp.push(a)
  end
  n = tmp.sort.last
  tmp.count(n)
end
