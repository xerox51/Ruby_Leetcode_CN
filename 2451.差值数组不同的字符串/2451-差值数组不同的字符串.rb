# @param {String[]} words
# @return {String}
def odd_string(words)
  ans = {}
  for i in 0...words.length
    temp = []
    num = words[i].length - 1
    num.downto(1) do |j|
      temp.push(words[i][j].ord - words[i][j - 1].ord)
    end
    if ans.has_key?(temp)
      ans[temp].push(i)
    else
      ans[temp] = [i]
    end
  end
  ans.each_pair do |key, value|
    if ans[key].length == 1
      return words[ans[key][0]]
    end
  end
end
