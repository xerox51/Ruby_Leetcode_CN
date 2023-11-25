# @param {String[]} words
# @param {String} chars
# @return {Integer}

def count_characters(words, chars)
  counts = 0
  flag = 0
  for i in 0...words.length
    words[i].each_char do |c|
      if words[i].count(c) <= chars.count(c)
        flag = 1
        next
      else
        flag = 0
        break
      end
    end
    if flag == 1
      counts += words[i].length
    end
  end
  counts
end
