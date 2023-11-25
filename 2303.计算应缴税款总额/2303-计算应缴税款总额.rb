# @param {Integer[][]} brackets
# @param {Integer} income
# @return {Float}
def calculate_tax(brackets, income)
  ans = []
  for item in brackets
    ans.push(item[0])
  end
  temp = ans.bsearch_index { |element| element >= income }
  if temp == nil
    total = income * brackets[0][1] / 100.0
    return total
  end
  if temp > 0
    total = brackets[0][0] * brackets[0][1] / 100.0
    for i in 1...temp
      total += (brackets[i][0] - brackets[i - 1][0]) * brackets[i][1] / 100.0
    end
    return total + (income - brackets[temp - 1][0]) * brackets[temp][1] / 100.0
  elsif temp == 0
    total = income * brackets[0][1] / 100.0
    return total
  end
end
