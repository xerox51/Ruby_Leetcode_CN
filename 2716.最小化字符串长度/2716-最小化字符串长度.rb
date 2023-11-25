# @param {String} s
# @return {Integer}
def minimized_string_length(s)
  s.each_char.to_a.uniq.length
end
