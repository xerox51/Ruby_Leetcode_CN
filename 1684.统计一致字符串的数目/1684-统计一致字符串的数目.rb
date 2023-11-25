# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  counts = words.length
  for i in 0...words.length
    words[i].each_char do |c|
      unless allowed.include?(c)
        counts -= 1
        break
      end
    end
  end
  counts
end
