# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
  answer = []
  sentence.split.each_with_index do |item, index|
    if ["a", "e", "i", "o", "u"].include?(item.downcase[0])
      answer.push(item + "ma" + "a" * (index + 1))
    else
      answer.push(item[1, item.length - 1] + item[0] + "ma" + "a" * (index + 1))
    end
  end
  answer.join(" ")
end
