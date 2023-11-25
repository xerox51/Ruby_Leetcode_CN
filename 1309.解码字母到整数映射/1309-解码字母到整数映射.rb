# @param {String} s
# @return {String}
def freq_alphabets(s)
  ans = []
  for i in 0...s.length
    if s[i] == "#"
      ans.push(i - 2)
    end
  end
  temp = []
  j = 0
  while j < s.length
    if ans.include?(j)
      temp.push((s[j, 2].to_i + 96).chr)
      j += 3
    else
      temp.push((s[j].to_i + 96).chr)
      j += 1
    end
  end
  temp.join
end
