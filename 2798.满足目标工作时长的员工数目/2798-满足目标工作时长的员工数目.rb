# @param {Integer[]} hours
# @param {Integer} target
# @return {Integer}
def number_of_employees_who_met_target(hours, target)
  hours.select! { |item| item >= target }
  hours.length
end
