# @param {Integer[]} places
# @return {Boolean}
def check_dynasty(places)
  repeat = {}
  ma, mi = 0, 14
  for place in places
    if place == 0
      next
    end
    ma = [ma, place].max
    mi = [mi, place].min
    if repeat.include?(place)
      return false
    end
    repeat[place] = 1
  end
  (ma - mi) < 5
end
