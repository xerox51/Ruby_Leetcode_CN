# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  a = words.join.each_char.to_a.uniq
  b = words.join
  a.each do |item|
    if b.count(item) % words.length != 0
      return false
    end
  end
  true
end
