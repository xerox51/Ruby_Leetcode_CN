# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  s = license_plate.dup.downcase
  s.each_char { |c| unless (97..122).include?(c.ord) then s.delete!(c) end }
  answer_len = Array.new
  answer = Array.new
  for i in 0...words.length
    flag = judge(s, words[i])
    if flag
      answer.push(words[i])
      answer_len.push(words[i].length)
    end
  end
  return answer[answer_len.index(answer_len.min)]
end

def judge(s, word)
  s.squeeze.each_char do |c|
    if (s.count(c)).to_i > (word.count(c)).to_i
      return false
    end
  end
  return true
end
