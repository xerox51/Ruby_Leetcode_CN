# @param {String} date
# @return {String}
def reformat_date(date)
  s2month = {
    "Jan" => "01", "Feb" => "02", "Mar" => "03", "Apr" => "04", "May" => "05", "Jun" => "06",
    "Jul" => "07", "Aug" => "08", "Sep" => "09", "Oct" => "10", "Nov" => "11", "Dec" => "12",
  }
  s = date.split
  year = s[2]
  month = s2month[s[1]]
  day = s[0].chop.chop
  if day.length == 1
    day = "0" + day
  end
  return [year, month, day].join("-")
end
