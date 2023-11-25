def largest_integer(num)
  s = {}
  d = {}
  a = num.to_s
  for i in 0...a.length
    if a[i].to_i % 2 == 0
      s[i] = a[i].to_i
    else
      d[i] = a[i].to_i
    end
  end
  m1 = s.values.sort_by { |item| item }
  m1.reverse!
  i = 0
  s.each_pair do |key, value|
    s[key] = m1[i]
    i += 1
  end
  n1 = d.values.sort_by { |item| item }
  n1.reverse!
  j = 0
  d.each_pair do |key, value|
    d[key] = n1[j]
    j += 1
  end
  s = s.merge(d)
  for i in 0...a.length
    a[i] = s[i].to_s
  end
  a.to_i
end
