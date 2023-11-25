# @param {String} s
# @param {Integer} length
# @return {String}
def replace_spaces(s, length)
  if s[0, length].include?(" ")
    s[0, length].gsub(" ", "%20")
  else
    s[0, length]
  end
end
