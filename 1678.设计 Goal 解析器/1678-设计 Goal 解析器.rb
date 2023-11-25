# @param {String} command
# @return {String}
def interpret(command)
  array1 = getall(command.length, "G", command)
  array2 = getall(command.length, "()", command)
  array3 = getall(command.length, "(al)", command)
  answer = [array1, array2, array3].flatten.sort
  s = ""
  answer.each do |item|
    if array1.include?(item)
      s << "G"
    elsif array2.include?(item)
      s << "o"
    else
      s << "al"
    end
  end
  s
end

def getall(n, c, s)
  i = 1
  len = c.length
  if s.index(c)
    temp = [s.index(c)]
  end
  unless s.index(c)
    return []
  end
  while i < n
    a = temp[i - 1] + len
    if s.index(c, a)
      temp.push(s.index(c, a))
    end
    unless s.index(c, a)
      break
    end
    i += 1
  end
  return temp
end
