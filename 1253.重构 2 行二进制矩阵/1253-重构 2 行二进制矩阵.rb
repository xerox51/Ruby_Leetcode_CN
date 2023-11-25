# @param {Integer} upper
# @param {Integer} lower
# @param {Integer[]} colsum
# @return {Integer[][]}
def reconstruct_matrix(upper, lower, colsum)
  n = colsum.count(2)
  if colsum.sum != upper + lower or n > upper or n > lower
    return []
  else
    m = colsum.length
    ans1 = Array.new(m, 0)
    ans2 = Array.new(m, 0)
    count1 = 0
    for i in 0...colsum.length
      if colsum[i] == 2
        ans1[i] = 1
        count1 += 1
        ans2[i] = 1
      end
    end
    for j in 0...colsum.length
      if colsum[j] == 1
        if count1 < upper
          ans1[j] = 1
          count1 += 1
        else
          ans2[j] = 1
        end
      end
    end
    [ans1, ans2]
  end
end
