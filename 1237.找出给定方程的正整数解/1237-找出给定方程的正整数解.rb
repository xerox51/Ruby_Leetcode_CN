# 	This is the custom function interface.
#	You should not implement it, or speculate about its implementation
#	class CustomFunction:
#		def f(self, x, y):
# 			Returns f(x, y) for any given positive integers x and y.
# 			Note that f(x, y) is increasing with respect to both x and y.
# 			i.e. f(x, y) < f(x + 1, y), f(x, y) < f(x, y + 1)
# 		end
# 	end
#

# @param {CustomFunction} customfunction
# @param {Integer} z
# @return {List[List[Integer]]}
def findSolution(customfunction, z)
  ans = []
  y = 1000
  (1..1000).each do |x|
    while y >= 0 and customfunction.f(x, y) > z
      y -= 1
    end
    if y == 0
      break
    end
    if customfunction.f(x, y) == z
      ans.push([x, y])
    end
  end
  ans
end
