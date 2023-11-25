# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  for i in 0...board.length
    for j in 0...board[0].length
      if board[i][j] == "R"
        a, b = i, j
        break
      end
    end
  end
  m = board[a]
  m1 = 0
  (b - 1).downto(0) do |j|
    if m[j] == "B"
      m1 = j
      break
    end
  end
  if m[m1, b - m1].include?("p")
    m2 = 1
  else
    m2 = 0
  end
  n1 = nil
  (b + 1).upto(m.length - 1) do |j|
    if m[j] == "B"
      n1 = j
      break
    end
  end
  if n1 != nil
    if m[b, n1 - b].include?("p")
      n2 = 1
    else
      n2 = 0
    end
  else
    if m[b, m.length - b].include?("p")
      n2 = 1
    else
      n2 = 0
    end
  end
  tmp = board.transpose[b]
  k1 = 0
  (a - 1).downto(0) do |j|
    if tmp[j] == "B"
      k1 = j
      break
    end
  end
  if tmp[k1, a - k1].include?("p")
    k2 = 1
  else
    k2 = 0
  end
  l1 = nil
  (a + 1).upto(tmp.length - 1) do |j|
    if tmp[j] == "B"
      l1 = j
      break
    end
  end
  if l1 != nil
    if tmp[a, l1 - a].include?("p")
      l2 = 1
    else
      l2 = 0
    end
  else
    if tmp[a, tmp.length - a].include?("p")
      l2 = 1
    else
      l2 = 0
    end
  end
  m2 + n2 + k2 + l2
end
