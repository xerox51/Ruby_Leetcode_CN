def num_matching_subseq(s, words)
  h = {}
  for i in 0...s.length
    if h.has_key?(s[i])
      h[s[i]].push(i)
    else
      h[s[i]] = [i]
    end
  end
  ans = words.length
  for item in words
    if item.length > s.length
      ans -= 1
      next
    end
    p = -1
    for i in 0...item.length
      if h.has_key?(item[i])
        ps = h[item[i]]
        j = ps.bsearch_index { |it| it > p }
        if j == nil
          ans -= 1
          break
        end
        p = ps[j]
      else
        ans -= 1
        break
      end
    end
  end
  ans
end
