# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
  counts = 0
  for i in 0...words1.length
    if words1.count(words1[i]) == 1 and words2.count(words1[i]) == 1
      counts += 1
    end
  end
  counts
end
