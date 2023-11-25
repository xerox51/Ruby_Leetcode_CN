# @param {String} sentence
# @return {Boolean}
def is_circular_sentence(sentence)
  flag = sentence[0][0]
  sentence = sentence.split(" ")
  for i in 0...sentence.length - 1
    if sentence[i][-1] != sentence[i + 1][0]
      return false
    end
  end
  return flag == sentence[-1][-1]
end
