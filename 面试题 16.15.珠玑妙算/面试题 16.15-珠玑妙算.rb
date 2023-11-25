# @param {String} solution
# @param {String} guess
# @return {Integer[]}
def master_mind(solution, guess)
  ans = [0, 0]
  temp_s = []
  temp_g = []
  for i in 0...solution.length
    if solution[i] == guess[i]
      ans[0] += 1
      temp_s.push(i)
      temp_g.push(i)
    end
  end
  for i in 0...solution.length
    for j in 0...guess.length
      if i != j and not temp_s.include?(i) and not temp_g.include?(j)
        if solution[i] == guess[j]
          temp_s.push(i)
          temp_g.push(j)
        end
      end
    end
  end
  ans[1] = temp_s.length - ans[0]
  return ans
end
