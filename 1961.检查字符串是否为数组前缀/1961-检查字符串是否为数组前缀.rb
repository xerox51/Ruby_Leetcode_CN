# @param {String} s
# @param {String[]} words
# @return {Boolean}
def is_prefix_string(s, words)
  if s.start_with?(words[0])
    temp = ""
    for i in 0...words.length
      temp << words[i]
      if s.eql?(temp)
        return true
      end
      if i == words.length - 1 and not s.eql?(temp)
        return false
      end
    end
  else
    return false
  end
end
