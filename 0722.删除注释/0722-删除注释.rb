# @param {String[]} source
# @return {String[]}
def remove_comments(source)
  res = []
  new_line = []
  in_block = false
  source.each do |line|
    i = 0
    while i < line.length
      if in_block
        if i + 1 < line.length and line[i] == "*" and line[i + 1] == "/"
          in_block = false
          i += 1
        end
      else
        if i + 1 < line.length and line[i] == "/" and line[i + 1] == "*"
          in_block = true
          i += 1
        elsif i + 1 < line.length and line[i] == "/" and line[i + 1] == "/"
          break
        else
          new_line.push(line[i])
        end
      end
      i += 1
    end
    if (not in_block) and new_line.length > 0
      res.push(new_line.join)
      new_line = []
    end
  end
  res
end
