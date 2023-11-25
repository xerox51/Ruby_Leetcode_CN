# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  num = (s.count(c)).to_i
  temp = getall(num, c, s)
  answer = Array.new
  for i in 0...s.length
    distance = []
    for j in temp
      distance.push((i - j).abs)
    end
    answer.push(distance.min)
  end
  answer
end

def getall(n, c, s)
  i = 1
  temp = [s.index(c)]
  while i < n
    a = temp[i - 1] + 1
    temp.push(s.index(c, a))
    i += 1
  end
  return temp
end
