# @param {Integer} n
# @param {Integer[]} rounds
# @return {Integer[]}
def most_visited(n, rounds)
  ans = Array.new(n, 0)
  for i in 0...rounds.length - 1
    if rounds[i] < rounds[i + 1]
      for j in rounds[i]..rounds[i + 1]
        ans[j - 1] += 1
      end
    else
      temp = n - rounds[i]
      if temp == 0
        ans[rounds[i] - 1] += 1
        for j in 1..rounds[i + 1]
          ans[j - 1] += 1
        end
      else
        for j in rounds[i]..n
          ans[j - 1] += 1
        end
        for j in 1..rounds[i + 1]
          ans[j - 1] += 1
        end
      end
    end
  end
  for j in 0...ans.length
    for i in 1...rounds.length - 1
      if rounds[i] == j + 1
        ans[j] -= 1
      end
    end
  end
  a = (1..n).to_a.select { |item| ans[item - 1] == ans.max }
  a
end
