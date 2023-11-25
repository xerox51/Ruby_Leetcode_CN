# @param {String[]} words
# @return {String}
def first_palindrome(words)
  words.each do |item|
    if item.reverse.eql?(item)
      return item
    end
  end
  return ""
end
