# @param {Integer[]} salary
# @return {Float}
def average(salary)
  (salary - salary.minmax).sum / (salary.length - 2).to_f
end
