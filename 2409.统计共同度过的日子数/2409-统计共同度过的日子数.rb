# @param {String} arrive_alice
# @param {String} leave_alice
# @param {String} arrive_bob
# @param {String} leave_bob
# @return {Integer}
def count_days_together(arrive_alice, leave_alice, arrive_bob, leave_bob)
  tmp = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  t = []
  for i in 0..tmp.length
    t.push(tmp[0, i].sum)
  end
  [calc_days([leave_alice, leave_bob].min, t) - calc_days([arrive_alice, arrive_bob].max, t) + 1, 0].max
end

def calc_days(date, t)
  return t[date[0, 2].to_i - 1] + date[3, date.length - 3].to_i
end
