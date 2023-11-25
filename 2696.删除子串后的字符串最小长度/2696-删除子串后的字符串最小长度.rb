# @param {String} s
# @return {Integer}
def min_length(s)
  while true
    if s.include?("AB")
      s.gsub!("AB", "")
    end
    if s.include?("CD")
      s.gsub!("CD", "")
    end
    if (not s.include?("AB")) and (not s.include?("CD"))
      break
    end
  end
  return s.length
end
