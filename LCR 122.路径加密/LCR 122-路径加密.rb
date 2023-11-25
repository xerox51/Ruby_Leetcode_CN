# @param {String} s
# @return {String}
def replace_space(s)
  if s.empty? or not s.include?(" ")
    s
  else
    s.gsub!(" ", "%20")
  end
end
