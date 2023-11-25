# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  counts = 0
  temp = 1
  for i in 0...s.length
    counts += widths[s[i].ord - 97]
    if counts > 100 and counts - widths[s[i].ord - 97] < 100
      temp += 1
      counts = widths[s[i].ord - 97]
    end
    if counts == 100 and i < s.length - 1
      temp += 1
      counts = 0
    end
    if i == s.length - 1
      return [temp, counts]
    end
  end
end
