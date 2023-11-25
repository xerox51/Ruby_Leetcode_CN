# @param {String} time
# @return {Integer}
def count_time(time)
  time_s = time.split(":").join
  ans = []
  if time_s[0] == "?"
    if time_s[1] == "?"
      ans.push(24)
    elsif time_s[1].to_i >= 4
      ans.push(2)
    else
      ans.push(3)
    end
  elsif time_s[0] == "0" or time_s[0] == "1"
    if time_s[1] == "?"
      ans.push(10)
    else
      ans.push(1)
    end
  elsif time_s[0] == "2"
    if time_s[1] == "?"
      ans.push(4)
    else
      ans.push(1)
    end
  end
  if time_s[2] == "?"
    if time_s[3] == "?"
      ans.push(60)
    else
      ans.push(6)
    end
  elsif time_s[2] != "?"
    if time_s[3] == "?"
      ans.push(10)
    else
      ans.push(1)
    end
  end
  ans[0] * ans[1]
end
