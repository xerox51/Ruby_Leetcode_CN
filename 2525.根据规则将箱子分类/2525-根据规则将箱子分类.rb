# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  if length * width * height >= 10 ** 9
    if mass >= 100
      return "Both"
    elsif mass < 100
      return "Bulky"
    end
  elsif length >= 10 ** 4
    if mass >= 100
      return "Both"
    elsif mass < 100
      return "Bulky"
    end
  elsif width >= 10 ** 4
    if mass >= 100
      return "Both"
    elsif mass < 100
      return "Bulky"
    end
  elsif height >= 10 ** 4
    if mass >= 100
      return "Both"
    elsif mass < 100
      return "Bulky"
    end
  elsif mass < 100
    return "Neither"
  else
    return "Heavy"
  end
end
