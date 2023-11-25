# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  ans = []
  for i in left..right
    if c(i)
      ans.push(i)
    end
  end
  ans
end

def c(num)
  n = num.to_s
  for i in 0...n.length
    if n[i] == "0"
      return false
    end
    if num % (n[i].to_i) != 0
      return false
    end
  end
  true
end
