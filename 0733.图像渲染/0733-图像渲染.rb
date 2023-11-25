# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  currColor = image[sr][sc]
  if currColor == color
    return image
  end
  n, m = image.length, image[0].length
  que = [[sr, sc]]
  image[sr][sc] = color
  while not que.empty?
    x, y = que.shift
    for lm in [[x - 1, y], [x + 1, y], [x, y - 1], [x, y + 1]]
      if lm[0] >= 0 && lm[0] < n && lm[1] >= 0 && lm[1] < m && image[lm[0]][lm[1]] == currColor
        que.push([lm[0], lm[1]])
        image[lm[0]][lm[1]] = color
      end
    end
  end
  image
end
