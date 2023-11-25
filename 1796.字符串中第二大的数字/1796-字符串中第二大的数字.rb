# @param {String} s
# @return {Integer}
def second_highest(s)
  s.each_char { |c| if c =~ /[a-z]/ then s.delete!(c) end }
  if s == ""
    -1
  else
    if s.each_char.to_a.uniq.sort.length == 1
      -1
    else
      s.each_char.to_a.uniq.sort[-2].to_i
    end
  end
end
