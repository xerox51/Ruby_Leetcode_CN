# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  return sentence.split(//).uniq.length == 26
end
