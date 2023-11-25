# @param {String} number
# @return {String}
def reformat_number(number)
  if number.include?(" ")
    number.gsub!(" ", "")
  end
  if number.include?("-")
    number.gsub!("-", "")
  end
  if number.length <= 3
    return number
  end
  if number.length % 3 == 0
    temp = []
    (0...number.length).step(3) do |i|
      temp.push(number[i, 3])
      if i < number.length - 3
        temp.push("-")
      end
    end
    return temp.join
  end
  if number.length % 3 == 1
    temp = []
    (0...number.length - 5).step(3) do |i|
      temp.push(number[i, 3])
      temp.push("-")
    end
    temp.push(number[number.length - 4, 2])
    temp.push("-")
    temp.push(number[number.length - 2, 2])
    return temp.join
  end
  if number.length % 3 == 2
    temp = []
    (0...number.length - 3).step(3) do |i|
      temp.push(number[i, 3])
      temp.push("-")
    end
    temp.push(number[number.length - 2, 2])
    return temp.join
  end
end
