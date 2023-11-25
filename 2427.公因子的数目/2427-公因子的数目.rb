def common_factors(a, b)
  if a > b
    ans = 0
    a, b = b, a
    temp = []
    for i in 1..a
      if a % i == 0
        temp.push(i)
      end
    end
    for j in temp
      if b % j == 0
        ans += 1
      end
    end
    ans
  else
    ans = 0
    temp = []
    for i in 1..a
      if a % i == 0
        temp.push(i)
      end
    end
    for j in temp
      if b % j == 0
        ans += 1
      end
    end
    ans
  end
end
