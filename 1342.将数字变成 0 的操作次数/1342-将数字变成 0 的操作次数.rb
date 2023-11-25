# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  n = num
  cnt = 0
  while n != 0
    if n % 2 == 0
      n = n / 2
      cnt += 1
    else
      n = n - 1
      cnt += 1
    end
  end
  cnt
end
