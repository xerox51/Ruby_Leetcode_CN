# @param {Integer[]} player1
# @param {Integer[]} player2
# @return {Integer}
def is_winner(player1, player2)
  if score(player1) > score(player2)
    return 1
  elsif score(player1) < score(player2)
    return 2
  else
    return 0
  end
end

def score(player)
  res = 0
  for i in 0...player.length
    x = player[i]
    if (i != 0 && player[i - 1] == 10) || (i > 1 && player[i - 2] == 10)
      x = player[i] * 2
    end
    res += x
  end
  res
end
