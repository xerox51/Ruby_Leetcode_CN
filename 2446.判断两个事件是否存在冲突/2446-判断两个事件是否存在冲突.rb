# @param {String[]} event1
# @param {String[]} event2
# @return {Boolean}
def have_conflict(event1, event2)
  e1 = event1.each { |item| item.split(":").join.to_i }
  e2 = event2.each { |item| item.split(":").join.to_i }
  if e2.max >= e1.min and e2.max <= e1.max
    true
  elsif e1.max >= e2.min and e1.max <= e2.max
    true
  else
    false
  end
end
