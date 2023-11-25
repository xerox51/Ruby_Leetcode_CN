# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  if num1 == "0" or num2 == "0"
    return "0"
  end
  m, n = num1.length, num2.length
  ansArr = Array.new(m + n, 0)
  (m - 1).downto(0) do |i|
    x = num1[i].to_i
    (n - 1).downto(0) do |j|
      ansArr[i + j + 1] += x * num2[j].to_i
    end
  end
  (m + n - 1).downto(1) do |l|
    ansArr[l - 1] += ansArr[l] / 10
    ansArr[l] %= 10
  end
  if ansArr[0] == 0
    index = 1
  else
    index = 0
  end
  ans = ""
  for i in index...ansArr.length
    ans << ansArr[i].to_s
  end
  ans
end
