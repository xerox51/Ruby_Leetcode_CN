# @param {String} date
# @return {Integer}
def day_of_year(date)
  days_of_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  year = date[0, 4].to_i
  if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0
    days_of_month[1] = 29
  end
  month = date[5, 2].to_i
  day = date[8, 2].to_i
  days = 0
  for i in 0...month - 1
    days += days_of_month[i]
  end
  days += day
  return days
end
