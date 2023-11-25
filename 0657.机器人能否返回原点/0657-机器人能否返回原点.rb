# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  if moves.length == 1
    return false
  end
  if (moves.count("U")).to_i == (moves.count("D")).to_i and (moves.count("L")).to_i == (moves.count("R")).to_i
    return true
  end
  return false
end
