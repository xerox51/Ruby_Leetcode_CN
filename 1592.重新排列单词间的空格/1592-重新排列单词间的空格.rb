# @param {String} text
# @return {String}
def reorder_spaces(text)
  num = text.count(" ")
  if text.split.length > 1
    seq = num / (text.split.length - 1)
    tail = num % (text.split.length - 1)
    return text.split.join(" " * seq) + " " * tail
  else
    return text.split.first + " " * num
  end
end
