# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  i, j, add = num1.length - 1, num2.length - 1, 0
  ans = ""
  while i >= 0 || j >= 0 || add != 0
    if i >= 0
      x = num1[i].ord - "0".ord
    else
      x = 0
    end
    if j >= 0
      y = num2[j].ord - "0".ord
    else
      y = 0
    end
    result = x + y + add
    ans << ("0".ord + result % 10).chr
    add = result / 10
    i -= 1
    j -= 1
  end
  ans.reverse
end
