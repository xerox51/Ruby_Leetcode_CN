# @param {String[]} words
# @return {String[]}
def common_chars(words)
  temp = words[0].split(//)
  answer = {}
  for j in 0...temp.length
    temp_array = []
    for i in 0...words.length
      temp_array.push(words[i].count(temp[j]))
      if (words[i].count(temp[j])).to_i == 0
        temp_array.clear
        break
      end
    end
    unless temp_array.empty?
      answer[temp[j]] = temp_array.min
    end
  end
  if answer
    temp.clear
    answer.each do |key, value|
      fuck = (key * value).split(//)
      temp.concat(fuck)
    end
    return temp
  end
  return temp.clear
end
