# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  word_dict_set = {}
  for item in word_dict
    word_dict_set[item] = true
  end
  dp = Array.new(s.length + 1, false)
  dp[0] = true
  for i in 1..s.length
    j = 0
    while j < i
      if dp[j] and word_dict_set[s[j, i - j]]
        dp[i] = true
        break
      end
      j += 1
    end
  end
  dp[s.length]
end
