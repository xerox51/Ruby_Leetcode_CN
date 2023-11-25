# @param {String} word
# @return {Integer}
def min_time_to_type(word)
  flag = 0
  for i in 0...word.length
    if i == 0
      flag += [word[0].ord - "a".ord, "z".ord - word[0].ord + 1].min
      flag += 1
    else
      if word[i].ord >= word[i - 1].ord
        flag += [word[i].ord - word[i - 1].ord, word[i - 1].ord - "a".ord + 1 + "z".ord - word[i].ord].min
        flag += 1
      else
        flag += [word[i - 1].ord - word[i].ord, word[i].ord - "a".ord + 1 + "z".ord - word[i - 1].ord].min
        flag += 1
      end
    end
  end
  flag
end
