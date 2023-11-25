# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  [s1.split, s2.split].flatten.select { |item| [s1.split, s2.split].flatten.count(item) == 1 }
end
