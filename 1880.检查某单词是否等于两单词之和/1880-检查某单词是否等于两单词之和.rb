# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
  return process(first_word) + process(second_word) == process(target_word)
end

def process(word)
  s = ""
  word.each_char do |c|
    s << (c.ord - 97).to_s
  end
  s.to_i
end
