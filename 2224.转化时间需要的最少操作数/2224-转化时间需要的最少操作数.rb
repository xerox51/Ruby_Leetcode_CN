# @param {String} current
# @param {String} correct
# @return {Integer}
def convert_time(current, correct)
  current_left = current[0, 2].to_i
  current_right = current[3, 2].to_i
  correct_left = correct[0, 2].to_i
  correct_right = correct[3, 2].to_i
  counts = 0
  h = { 5 => 1, 10 => 2, 15 => 1, 20 => 2, 25 => 3, 30 => 2,
        35 => 3, 40 => 4, 45 => 3, 50 => 4, 55 => 5 }
  if correct_right >= current_right
    counts += (correct_left - current_left)
    time = correct_right - current_right
    for i in 0...h.keys.length
      if time >= h.keys[h.keys.length - i - 1]
        counts += h[h.keys[h.keys.length - i - 1]]
        counts += (time - h.keys[h.keys.length - i - 1])
        break
      end
      if i == h.keys.length - 1 and time < h.keys[h.keys.length - i - 1]
        counts += time
      end
    end
    return counts
  else
    counts += (correct_left - current_left - 1)
    time = 60 - current_right + correct_right
    for i in 0...h.keys.length
      if time >= h.keys[h.keys.length - i - 1]
        counts += h[h.keys[h.keys.length - i - 1]]
        counts += (time - h.keys[h.keys.length - i - 1])
        break
      end
      if i == h.keys.length - 1 and time < h.keys[h.keys.length - i - 1]
        counts += time
      end
    end
    return counts
  end
end
