# @param {Integer[][]} queens
# @param {Integer[]} king
# @return {Integer[][]}
def queens_attackthe_king(queens, king)
  ans = []
  queens = queens.to_h { |item| [item, true] }
  i = king[0]
  temp = nil
  for k in 0...king[1]
    if queens.include?([i, k])
      temp = [i, k]
    end
  end
  ans.push(temp)
  7.downto(king[1] + 1) do |k|
    if queens.include?([i, k])
      temp = [i, k]
    end
  end
  ans.push(temp)
  j = king[1]
  temp = nil
  for k in 0...king[0]
    if queens.include?([k, j])
      temp = [k, j]
    end
  end
  ans.push(temp)
  7.downto(king[0] + 1) do |k|
    if queens.include?([k, j])
      temp = [k, j]
    end
  end
  ans.push(temp)
  flag1, flag2, flag3, flag4 = false, false, false, false
  for k in 0...8
    if king[0] - k >= 0 and king[1] - k >= 0 and (not flag1)
      if queens.include?([king[0] - k, king[1] - k])
        ans.push([king[0] - k, king[1] - k])
        flag1 = true
      end
    end
    if king[0] + k <= 7 and king[1] + k <= 7 and (not flag2)
      if queens.include?([king[0] + k, king[1] + k])
        ans.push([king[0] + k, king[1] + k])
        flag2 = true
      end
    end
    if king[0] - k >= 0 and king[1] + k <= 7 and (not flag3)
      if queens.include?([king[0] - k, king[1] + k])
        ans.push([king[0] - k, king[1] + k])
        flag3 = true
      end
    end
    if king[0] + k <= 7 and king[1] - k >= 0 and (not flag4)
      if queens.include?([king[0] + k, king[1] - k])
        ans.push([king[0] + k, king[1] - k])
        flag4 = true
      end
    end
  end
  ans.compact.uniq
end
