def most_popular_creator(creators, ids, views)
  ans = {}
  score = {}
  for i in 0...creators.length
    if ans.has_key?(creators[i])
      ans[creators[i]].push([ids[i], views[i]])
      score[creators[i]] += views[i]
    else
      ans[creators[i]] = [[ids[i], views[i]]]
      score[creators[i]] = views[i]
    end
  end
  temp = score.values.max
  arr = score.select { |key, value| value == temp }
  ans = ans.select { |key, value| arr.has_key?(key) }
  tp = []
  ans.each_pair do |key, value|
    t = ans[key].sort_by! { |item| [-item[1], item[0]] }
    tp.push([key, t[0][0]])
  end
  tp
end
