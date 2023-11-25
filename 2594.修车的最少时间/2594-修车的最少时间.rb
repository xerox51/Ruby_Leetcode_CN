# @param {Integer[]} ranks
# @param {Integer} cars
# @return {Integer}
def repair_cars(ranks, cars)
  l = 1
  r = ranks[0] * cars * cars
  while l < r
    m = (l + r) >> 1
    if check(m, ranks, cars)
      r = m
    else
      l = m + 1
    end
  end
  l
end

def check(m, ranks, cars)
  t = ranks.map { |x| Integer.sqrt(m / x).floor }
  t.sum >= cars
end
