# @param {String} num
# @return {String}
def largest_good_integer(num)
  ans = []
  for i in 0...num.length - 2
    if num[i] == num[i + 1] and num[i + 1] == num[i + 2]
      ans.push((num[i] * 3).to_i)
    end
  end
  unless ans.empty?
    if ans.uniq == [0]
      return "000"
    else
      ans.max.to_s
    end
  else
    return ""
  end
end
