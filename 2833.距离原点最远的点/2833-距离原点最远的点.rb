# @param {String} moves
# @return {Integer}
def furthest_distance_from_origin(moves)
  l, r, underline = 0, 0, 0
  for i in 0...moves.length
    if moves[i] == "L"
      l += 1
    elsif moves[i] == "R"
      r += 1
    else
      underline += 1
    end
  end
  [(underline + l - r).abs, (underline + r - l).abs].max
end
