# @param {Integer} num
# @return {Integer}
def min_max_difference(num)
  s = num.to_s
  if s.length == 1
    return 9
  end
  s1 = s[0].to_i
  s.each_char.to_a do |item|
    s1 = [s1, item.to_i].max
  end
  if not s.start_with?(s1.to_s)
    m1 = s[0]
    t1 = s.gsub(m1, "9").to_i
    t2 = s.gsub(m1, "0").to_i
    return t1 - t2
  elsif s.start_with?(s1.to_s) and s1 < 9
    m1 = s[0]
    t1 = s.gsub(m1, "9").to_i
    t2 = s.gsub(m1, "0").to_i
    return t1 - t2
  else
    s.each_char.to_a.each_with_index do |item, index|
      if item != "9"
        m1 = s[index]
        break
      end
    end
    if m1 != nil
      t1 = s.gsub(m1, "9").to_i
      t2 = s.gsub("9", "0").to_i
      return t1 - t2
    else
      return num
    end
  end
end
