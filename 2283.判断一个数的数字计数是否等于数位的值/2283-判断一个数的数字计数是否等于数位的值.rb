# @param {String} num
# @return {Boolean}
def digit_count(num)
  for i in 0...num.length
    if num.count(i.to_s) != num[i].to_i
      return false
    end
  end
  return true
end
