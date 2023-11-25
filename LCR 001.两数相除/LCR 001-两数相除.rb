# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def divide(a, b)
  if (a / b.to_f) < 0
    return (a / b.to_f).ceil
  elsif (a / b.to_f) <= 2 ** 31 - 1
    return (a / b.to_f).floor
  else
    return 2 ** 31 - 1
  end
end
