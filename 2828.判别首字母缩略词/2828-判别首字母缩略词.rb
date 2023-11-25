# @param {String[]} words
# @param {String} s
# @return {Boolean}
def is_acronym(words, s)
  if s.length != words.length
    return false
  else
    words.each_with_index do |word, index|
      unless word.start_with?(s[index])
        return false
      end
    end
    return true
  end
end
