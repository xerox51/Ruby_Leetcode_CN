# @param {Integer} n
# @return {Integer}
def num_prime_arrangements(n)
  temp = n - 1
  for i in 2..n
    for j in 2..i - 1
      if i % j == 0
        temp = temp - 1
        break
      end
    end
  end
  ans = 1
  for i in 1..temp
    ans *= i
  end
  for j in 1..(n - temp)
    ans *= j
  end
  t = 10 ** 9 + 7
  ans % t
end
