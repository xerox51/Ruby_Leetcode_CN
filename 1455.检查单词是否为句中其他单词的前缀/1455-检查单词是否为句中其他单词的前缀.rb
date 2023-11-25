# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
  sentence.split.each_with_index do |item, index|
    if item.start_with?(search_word)
      return index + 1
    end
  end
  -1
end
