# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
  s = num.to_s.each_char.to_a
  ans = []
  for i in 0...s.length
    a1 = s[i].to_i
    t3 = []
    for j in 0...s.length
      if j != i
        t3.push(s[j])
      end
    end
    t3.sort_by! { |item| item.to_i }
    t = t3.join.to_i
    ans.push(a1 + t)
  end
  for i in 0...s.length
    a1 = s[i]
    for t in 0...s.length
      s2 = [a1]
      if s2.length <= 1 and t != i
        s2.push(s[t])
      end
      s2.sort_by! { |item| item.to_i }
      s2 = s2.join.to_i
      s3 = [""]
      for l in 0...s.length
        if l != t and l != i
          s3 << s[l]
        end
      end
      s3.sort_by! { |item| item.to_i }
      s3 = s3.join.to_i
      ans.push(s2 + s3)
    end
  end
  ans.min
end
