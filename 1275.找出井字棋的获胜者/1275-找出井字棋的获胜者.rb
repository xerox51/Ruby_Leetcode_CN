# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  moves_num = Array.new(3) { Array.new(3, false) }
  moves.each_with_index do |item, index|
    if index % 2 == 0
      item1, item2 = item
      moves_num[item1][item2] = 1
    else
      item1, item2 = item
      moves_num[item1][item2] = 0
    end
  end
  judge(moves_num)
end

def judge(move)
  move_t = move.transpose
  flag1 = false
  flag2 = false
  flag3 = false
  flag4 = false
  for item in move
    if item.all? { |it| it == 1 }
      flag1 = true
      break
    end
    if item.all? { |it| it == 0 }
      flag2 = true
      break
    end
  end
  for item in move_t
    if item.all? { |it| it == 1 }
      flag1 = true
      break
    end
    if item.all? { |it| it == 0 }
      flag2 = true
      break
    end
  end
  num_t = []
  num_f = []
  for i in 0...move.length
    for j in 0...move[0].length
      if i == j
        num_t.push(move[i][j])
      end
      if i + j == move.length - 1
        num_f.push(move[i][j])
      end
    end
  end
  if num_t.all? { |it| it == 1 } or num_f.all? { |it| it == 1 }
    flag1 = true
  end
  if num_t.all? { |it| it == 0 } or num_f.all? { |it| it == 0 }
    flag2 = true
  end
  if flag1 == false and flag2 == false
    for items in move
      for item in items
        if item == false
          flag3 = true
          break
        end
      end
    end
  end
  if flag3 == false and flag1 == false and flag2 == false
    return "Draw"
  end
  if flag3
    return "Pending"
  end
  if flag1
    return "A"
  end
  if flag2
    return "B"
  end
end
