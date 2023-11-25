# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  ans = []
  big = candies.max
  for i in 0...candies.length
    if candies[i] + extra_candies >= big
      ans.push(true)
    else
      ans.push(false)
    end
  end
  ans
end
