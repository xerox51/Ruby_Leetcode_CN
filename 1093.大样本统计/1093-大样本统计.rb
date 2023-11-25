# @param {Integer[]} count
# @return {Float[]}
def sample_stats(count)
  a = count.each_index.to_h { |index| [index, count[index]] }
  t = 0
  total = 0
  ans1 = 0
  ans2 = 0
  cnt = 0
  ans5 = 0
  arr = []
  a.each_pair do |key, value|
    if a[key] > 0
      ans1 = key.to_f
      break
    end
  end
  a.each_pair do |key, value|
    if a[255 - key] > 0
      ans2 = (255 - key).to_f
      break
    end
  end
  a.each_pair do |key, value|
    t += value
    arr.push(t)
    cnt = [cnt, value].max
    total += key * value
    if value == cnt
      ans5 = key.to_f
    end
  end
  ans3 = total / t.to_f
  ans4 = 0
  if t % 2 == 1
    m = t / 2 + 1
    l = arr.bsearch_index { |item| item >= m }
    ans4 = l.to_f
  else
    m = t / 2
    l = arr.bsearch_index { |item| item >= m }
    if arr[l] >= m + 1
      ans4 = l.to_f
    else
      tmp = 0
      a.each_pair do |key, value|
        if key > l and value > 0
          tmp = key
          break
        end
      end
      ans4 = (tmp + l) / 2.0
    end
  end
  [ans1, ans2, ans3, ans4, ans5]
end
