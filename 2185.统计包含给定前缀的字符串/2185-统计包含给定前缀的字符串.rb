# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
  count = 0
  words.each { |item| if item.start_with?(pref) then count += 1 end }
  count
end
