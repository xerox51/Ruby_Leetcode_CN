# @param {String} time
# @return {String}
def maximum_time(time)
  time = time.split(":")
  unless time[0].include?("?")
    a = time[0]
  end
  if time[0].start_with?("?")
    if (0..3).include?(time[0][1].to_i)
      a = "2" + time[0][1]
    end
    if (4..9).include?(time[0][1].to_i)
      a = "1" + time[0][1]
    end
  end
  if time[0].end_with?("?")
    if time[0][0].to_i == 2
      a = time[0][0] + "3"
    end
    if time[0][0].to_i == 1 or time[0][0].to_i == 0
      a = time[0][0] + "9"
    end
  end
  unless time[1].include?("?")
    b = time[1]
  end
  if time[1].start_with?("?")
    if (0..9).include?(time[1][1].to_i)
      b = "5" + time[1][1]
    end
  end
  if time[1].end_with?("?")
    if (0..5).include?(time[1][0].to_i)
      b = time[1][0] + "9"
    end
  end
  if time[0].include?("??")
    a = "23"
  end
  if time[1].include?("??")
    b = "59"
  end
  return a + ":" + b
end
