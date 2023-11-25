# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  a = edges[0]
  b = edges[1]
  a.each do |it|
    b.each do |item|
      if it == item
        return it
      end
    end
  end
end
