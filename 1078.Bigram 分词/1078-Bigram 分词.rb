# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
  ans = []
  word = text.split
  word.each_index do |index|
    if word[index] == first and word[index + 1] == second and index <= word.length - 3
      ans.push(word[index + 2])
    end
  end
  ans
end
