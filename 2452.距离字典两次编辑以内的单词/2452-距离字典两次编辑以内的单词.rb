# @param {String[]} queries
# @param {String[]} dictionary
# @return {String[]}
def two_edit_words(queries, dictionary)
  answer = []
  for i in 0...dictionary.length
    temp = dictionary[i]
    for j in 0...queries.length
      ans = queries[j]
      cnt = 0
      for l in 0...queries[j].length
        if queries[j][l] != dictionary[i][l]
          cnt += 1
        end
      end
      if cnt <= 2
        answer.push(j)
      end
    end
  end
  arr = answer.uniq.sort
  total = []
  for i in arr
    total.push(queries[i])
  end
  total
end
