# @param {Integer} turned_on
# @return {String[]}
def read_binary_watch(turned_on)
  tmp = [["0"], ["1", "2", "4", "8"], ["3", "5", "9", "6", "10"], ["7", "11"]]
  temp = [1, 2, 4, 8, 16, 32]
  t = {}
  for i in 0..5
    m = temp.combination(i).select { |item| item.sum <= 59 }
    l = []
    for it in m
      s = it.sum
      if s < 10
        l.push("0" + s.to_s)
      else
        l.push(s.to_s)
      end
    end
    t[i] = l
  end
  ans = []
  for i in 0..turned_on
    if turned_on - i >= 0
      l = turned_on - i
      r = i
      if r <= 3 and l <= 5
        x = tmp[r]
        y = t[l]
        for it in x
          for n in y
            ans.push([it, n].join(":"))
          end
        end
      end
    end
  end
  ans
end
