# @param {String} s
# @return {String}
def reverse_words(s)
  s.strip.split(" ").reverse.join(" ")
end
