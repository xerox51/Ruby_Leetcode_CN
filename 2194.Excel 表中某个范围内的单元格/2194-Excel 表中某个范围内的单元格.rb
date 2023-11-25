# @param {String} s
# @return {String[]}
def cells_in_range(s)
  answer = []
  (s[0].ord..s[3].ord).each do |c|
    (s[1].to_i..s[4].to_i).each do |n|
      answer.append(c.chr + n.to_s)
    end
  end
  answer
end
