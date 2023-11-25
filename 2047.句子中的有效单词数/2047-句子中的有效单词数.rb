# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
  item = sentence.split
  counts = 0
  for i in 0...item.length
    if judge_number(item[i]) and judge_begin(item[i])
      counts += 1
    end
  end
  counts
end

def judge_number(word)
  word.each_char do |c|
    if (48..57).include?(c.ord)
      return false
    end
  end
  return true
end

def judge_begin(word)
  if word.start_with?("-") or word.end_with?("-") or (word.count("-")).to_i > 1
    return false
  end
  set = ["!", ".", ","]
  for c in set
    if (word.count(c)).to_i > 1
      return false
    end
    if (word.count(c)).to_i == 1 and (not word.end_with?(c))
      return false
    end
    if word.end_with?("-" + c)
      return false
    end
  end
  return true
end
