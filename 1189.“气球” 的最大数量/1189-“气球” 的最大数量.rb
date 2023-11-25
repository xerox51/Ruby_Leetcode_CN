# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  a = text.count("a")
  b = text.count("b")
  n = text.count("n")
  l = text.count("l")
  o = text.count("o")
  return[a, b, n, l / 2, o / 2].min
end
