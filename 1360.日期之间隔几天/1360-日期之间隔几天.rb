# @param {String} date1
# @param {String} date2
# @return {Integer}
require "date"

def days_between_dates(date1, date2)
  return (to_date(date2) - to_date(date1)).to_i.abs
end

def to_date(d)
  t = d.split("-")
  return Date.new(t[0].to_i, t[1].to_i, t[2].to_i)
end
