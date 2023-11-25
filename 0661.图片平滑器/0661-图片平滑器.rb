# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
  m, n = img.length, img[0].length
  ans = Array.new(m) { Array.new(n, 0) }
  for i in 0...m
    for j in 0...n
      tot, num = 0, 0
      l = [i - 1, 0].max
      k = [i + 2, m].min
      for x in l...k
        a = [j - 1, 0].max
        b = [j + 2, n].min
        for y in a...b
          tot += img[x][y]
          num += 1
        end
      end
      ans[i][j] = tot / num
    end
  end
  ans
end
