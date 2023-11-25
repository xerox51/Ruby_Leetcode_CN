# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  image_ans = []
  for i in 0...image.length
    image_ans.push(image[i].reverse)
  end
  for i in 0...image_ans.length
    for j in 0...image_ans[0].length
      if image_ans[i][j] == 1
        image_ans[i][j] = 0
      else
        image_ans[i][j] = 1
      end
    end
  end
  image_ans
end
