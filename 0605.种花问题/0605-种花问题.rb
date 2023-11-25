# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  count = 0
  m = flowerbed.length
  prev = -1
  (0...m).each do |i|
    if flowerbed[i] == 1
      if prev < 0
        count += i / 2
      else
        count += (i - prev - 2) / 2
      end
      prev = i
    end
  end
  if prev < 0
    count += (m + 1) / 2
  else
    count += (m - prev - 1) / 2
  end
  count >= n
end
