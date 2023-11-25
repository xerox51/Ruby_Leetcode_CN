# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  words = paragraph.dup.downcase
  temp = words.split(/[!?',;. ]/).delete_if { |item| banned.include?(item) or item == "" }
  counts = 0
  answer = 0
  temp.uniq.each_with_index do |word, index|
    if temp.count(word) > counts
      counts = temp.count(word)
      answer = index
    end
  end
  return temp.uniq[answer]
end
