# @param {String} coordinates
# @return {Boolean}
def square_is_white(coordinates)
  return assignment(coordinates)
end

def assignment(num)
  if (num[0].ord - 97) % 2 == 0
    if (num[1].to_i - 1) % 2 == 0
      return false
    else
      return true
    end
  else
    if (num[1].to_i - 1) % 2 == 0
      return true
    else
      return false
    end
  end
end
