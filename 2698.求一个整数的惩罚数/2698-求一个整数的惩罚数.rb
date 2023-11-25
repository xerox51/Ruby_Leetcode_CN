# @param {Integer} n
# @return {Integer}
def punishment_number(n)
  res = [1, 9, 10, 36, 45, 55, 82, 91, 99, 100, 235, 297, 369, 370, 379, 414, 657, 675, 703, 756, 792, 909, 918, 945, 964, 990, 991, 999, 1000, 1296]
  total = 0
  res.each do |item|
    if item <= n
      total += item * item
    end
  end
  total
end
