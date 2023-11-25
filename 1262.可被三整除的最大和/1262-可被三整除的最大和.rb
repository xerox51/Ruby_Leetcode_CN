# @param {Integer[]} nums
# @return {Integer}
def max_sum_div_three(nums)
  a = nums.select { |item| item % 3 == 0 }
  b = nums.select { |item| item % 3 == 1 }
  b.sort!
  b.reverse!
  c = nums.select { |item| item % 3 == 2 }
  c.sort!
  c.reverse!
  ans = 0
  lb, lc = b.length, c.length
  tmp = [lb - 2, lb - 1, lb]
  for cntb in tmp
    if cntb >= 0
      tmp_c = [lc - 2, lc - 1, lc]
      for cntc in tmp_c
        if cntc >= 0 and (cntb - cntc) % 3 == 0
          ans = [ans, b[0, cntb].sum + c[0, cntc].sum].max
        end
      end
    end
  end
  ans + a.sum
end
