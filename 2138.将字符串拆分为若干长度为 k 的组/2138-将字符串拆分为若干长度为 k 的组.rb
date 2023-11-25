# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
  answer = []
  (0...s.length / k * k).step(k) do |i|
    answer.push(s[i, k])
  end
  if s.length / k * k != s.length
    a = s[s.length / k * k, s.length % k] + fill * (((s.length / k) + 1) * k - s.length)
    answer.push(a)
    return answer
  else
    return answer
  end
end
