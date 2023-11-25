# @param {String[]} words
# @return {String[]}
def string_matching(words)
  ans = []
  words.sort_by! { |element| element.length }
  for i in 0...words.length
    for j in i...words.length
      if words[i].length < words[j].length and words[j].include?(words[i])
        ans.push(words[i])
      end
    end
  end
  ans.uniq
end
