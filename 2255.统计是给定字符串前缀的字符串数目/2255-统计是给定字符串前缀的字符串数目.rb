# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
  words.filter! { |element| s.start_with?(element) }
  words.length
end
