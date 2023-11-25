# @param {Integer[]} fronts
# @param {Integer[]} backs
# @return {Integer}
def flipgame(fronts, backs)
  n = fronts.length
  same = {}
  for i in 0...n
    if fronts[i] == backs[i]
      same[fronts[i]] = 1
    end
  end
  res = 3000
  fronts.each do |a|
    if a < res and (not same.has_key?(a))
      res = a
    end
  end
  backs.each do |a|
    if a < res and (not same.has_key?(a))
      res = a
    end
  end
  if res < 3000
    return res
  else
    return 0
  end
end
