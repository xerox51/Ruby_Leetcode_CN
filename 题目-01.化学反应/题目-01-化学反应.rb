# @param {Integer[]} material
# @return {Integer}
def last_material(material)
  if material.length == 1
    return material[0]
  end
  material.sort!
  ans = 0
  for i in 0...material.length - 1
    ans = material[-1] - material[-2]
    material[-1] = material[-1] - material[-2]
    material[-2] = 0
    material.sort!
  end
  ans
end
