# @param {String} text
# @return {Integer}
def max_rep_opt1(text)
  counts = {}
  res = 0
  for i in 0...text.length
    if counts.has_key?(text[i])
      counts[text[i]] += 1
    else
      counts[text[i]] = 1
    end
  end
  for i in 0...text.length
    j = i
    while j < text.length && text[j] == text[i]
      j += 1
    end
    cur_cnt = j - i
    if cur_cnt < counts[text[i]] && (j < text.length || i > 0)
      res = [res, cur_cnt + 1].max
    end
    k = j + 1
    while k < text.length && text[k] == text[i]
      k += 1
    end
    res = [res, [k - i, counts[text[i]]].min].max
    i = j
  end
  res
end
