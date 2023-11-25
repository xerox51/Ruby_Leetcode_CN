# @param {String[]} patterns
# @param {String} word
# @return {Integer}
def num_of_strings(patterns, word)
  patterns.select! { |element| word.include?(element) }
  patterns.length
end
