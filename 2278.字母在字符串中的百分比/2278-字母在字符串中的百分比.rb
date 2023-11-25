# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
  (100 * (s.count(letter) / s.length.to_f)).floor
end
