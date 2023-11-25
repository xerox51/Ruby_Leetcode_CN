# @param {String} s
# @return {String}
def reformat(s)
  letter = s.each_char.to_a.select { |element| element.to_i == 0 and element != "0" }
  digit = s.each_char.to_a.select { |element| element.to_i != 0 or element == "0" }
  if (letter.length - digit.length).abs <= 1
    ans = ""
    if letter.length == digit.length
      for i in 0...digit.length
        ans << letter[i]
        ans << digit[i]
      end
    elsif letter.length > digit.length
      for i in 0...digit.length
        ans << letter[i]
        ans << digit[i]
      end
      ans << letter[-1]
    else
      for i in 0...letter.length
        ans << digit[i]
        ans << letter[i]
      end
      ans << digit[-1]
    end
    ans
  else
    ""
  end
end
