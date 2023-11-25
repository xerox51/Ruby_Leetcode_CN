# @param {Integer} num
# @return {Integer}
def train_ways(num)
  a, b = 1, 1
  num.times do
    a, b = b, a + b
  end
  a % (10 ** 9 + 7)
end
