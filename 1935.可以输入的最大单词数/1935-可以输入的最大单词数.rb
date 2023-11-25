# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  counts = text.split.length
  text.split.each do |word|
    if judge(word, broken_letters)
      counts -= 1
    end
  end
  counts
end

def judge(word, bl)
  bl.each_char do |c|
    if word.include?(c)
      return true
    end
  end
  false
end
