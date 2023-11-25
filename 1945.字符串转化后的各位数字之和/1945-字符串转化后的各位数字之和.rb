# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
  num = ""
  for i in 0...s.length
    num << (s[i].ord - 96).to_s
  end
  j = 0
  while j < k
    num = cal(num)
    j += 1
  end
  num.to_i
end

def cal(s)
  num = 0
  for i in 0...s.length
    num += s[i].to_i
  end
  num.to_s
end
