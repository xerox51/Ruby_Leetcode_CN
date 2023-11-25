# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  @n, @m = image.length, image[0].length
  @currcolor = image[sr][sc]
  @new_color = new_color
  @image = image
  if @currcolor != @new_color
    dfs(sr, sc)
  end
  return @image
end

def dfs(x, y)
  if @image[x][y] == @currcolor
    @image[x][y] = @new_color
    items = [[x - 1, y], [x + 1, y], [x, y - 1], [x, y + 1]]
    for item in items
      if 0 <= item[0] && item[0] < @n && item[1] >= 0 && item[1] < @m && @image[item[0]][item[1]] == @currcolor
        dfs(item[0], item[1])
      end
    end
  end
end
