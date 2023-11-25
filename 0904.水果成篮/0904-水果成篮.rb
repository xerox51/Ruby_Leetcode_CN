# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruits)
  cnt = {}
  left, ans = 0, 0
  for i in 0...fruits.length
    unless cnt.has_key?(fruits[i])
      cnt[fruits[i]] = 1
    else
      cnt[fruits[i]] += 1
    end
    while cnt.size > 2
      cnt[fruits[left]] -= 1
      if cnt[fruits[left]] == 0
        cnt.delete(fruits[left])
      end
      left += 1
    end
    ans = [ans, i - left + 1].max
  end
  ans
end
