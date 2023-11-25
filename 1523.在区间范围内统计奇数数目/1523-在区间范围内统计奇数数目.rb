# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  if low % 2 == 0 and high % 2 == 0
    return (high - low) / 2
  end
  if low % 2 == 0 and high % 2 == 1
    return (high - low) / 2 + 1
  end
  if low % 2 == 1 and high % 2 == 1
    return (high - low) / 2 + 1
  end
  if low % 2 == 1 and high % 2 == 0
    return (high - low) / 2 + 1
  end
end
