# @param {Integer} num
# @return {Integer}
def count_even(num)
  cnt = 0
  for i in 1..num
    temp = i.to_s
    ans = 0
    for j in 0...temp.length
      ans += temp[j].to_i
    end
    if ans % 2 == 0
      cnt += 1
    end
  end
  cnt
end
