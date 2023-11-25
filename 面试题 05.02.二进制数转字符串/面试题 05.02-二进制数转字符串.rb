# @param {Float} num
# @return {String}
def print_bin(num)
  s = ""
  cnt = 0
  while true
    num = 2 * num
    if num > 1
      s << "1"
      num = num - 1
    elsif num == 1
      s << "1"
      break
    else
      s << "0"
    end
    cnt += 1
    if cnt > 30
      return "ERROR"
      break
    end
  end
  ["0.", s].join
end
