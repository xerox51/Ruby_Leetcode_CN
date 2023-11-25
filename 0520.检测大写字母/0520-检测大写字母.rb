# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  flag = true
  if word.length == 1
    return flag
  end
  if word[0].ord > 64 and word[0].ord <= 90
    if word[1].ord > 64 and word[1].ord <= 90
      for j in 2...word.length
        if word[j].ord > 90
          flag = false
          break
        end
      end
    end
    if word[1].ord > 96 and word[1].ord <= 122
      for j in 2...word.length
        if word[j].ord <= 90
          flag = false
          break
        end
      end
    end
  elsif word[0].ord > 96 and word[0].ord <= 122
    for j in 1...word.length
      if word[j].ord <= 90
        flag = false
        break
      end
    end
  end
  return flag
end
