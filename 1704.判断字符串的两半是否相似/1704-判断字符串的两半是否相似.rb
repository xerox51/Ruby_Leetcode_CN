# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  counts(s[0, s.length / 2]) == counts(s[s.length / 2, s.length / 2])
end

def counts(word)
  num = 0
  word.downcase.each_char do |c|
    if ["a", "e", "i", "o", "u"].include?(c)
      num += 1
    end
  end
  num
end
