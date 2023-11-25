# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
  sentences.sort_by! { |item| item.split(" ").length }
  sentences[-1].split(" ").length
end
