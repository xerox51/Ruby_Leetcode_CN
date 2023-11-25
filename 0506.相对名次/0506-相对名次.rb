# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  arr = score.sort.reverse
  medal = {}
  arr.each_with_index do |item, index|
    if index == 0
      medal[item] = "Gold Medal"
    elsif index == 1
      medal[item] = "Silver Medal"
    elsif index == 2
      medal[item] = "Bronze Medal"
    else
      medal[item] = (index + 1).to_s
    end
  end
  ans = []
  for item in score
    ans.push(medal[item])
  end
  ans
end
