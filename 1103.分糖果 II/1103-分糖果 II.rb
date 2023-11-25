def distribute_candies(candies, num_people)
  candy_per_num = Array.new(num_people, 0)
  m = 0
  total = 0
  while true
    total += ((num_people + 1) * num_people) / 2 + m * num_people * num_people
    if total >= candies
      num = ((num_people + 1) * num_people) / 2 + m * num_people * num_people - (total - candies)
      break
    else
      m += 1
    end
  end
  if m == 0
    for j in 0...num_people
      candies -= (j + 1)
      if candies > 0
        candy_per_num[j] = j + 1
      else
        candy_per_num[j] = candies + j + 1
        break
      end
    end
    return candy_per_num
  end
  if m >= 1
    for i in 0...m
      for j in 0...num_people
        candy_per_num[j] += (j + 1) + i * num_people
      end
    end
    for j in 0...num_people
      num = num - (j + 1 + num_people * m)
      if num >= 0
        candy_per_num[j] += j + 1 + num_people * m
      else
        candy_per_num[j] += num + j + 1 + num_people * m
        break
      end
    end
    candy_per_num
  end
end
