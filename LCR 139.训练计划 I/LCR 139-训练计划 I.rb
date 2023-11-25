# @param {Integer[]} actions
# @return {Integer[]}
def training_plan(actions)
  a = actions.select { |item| item % 2 == 1 }
  b = actions.reject { |item| item % 2 == 1 }
  a.concat(b)
end
