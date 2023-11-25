# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  ans = {}
  for i in 0...dominoes.length
    if ans.has_key?(dominoes[i].sort)
      ans[dominoes[i].sort] += 1
    else
      ans[dominoes[i].sort] = 1
    end
  end
  total = ans.select { |key, value| value > 1 }
  if total.size < 1
    return 0
  end
  total_arr = total.values
  temp = 0
  for item in total_arr
    temp += item * (item - 1) / 2
  end
  temp
end
