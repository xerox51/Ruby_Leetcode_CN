# @param {String[]} queries
# @param {String[]} words
# @return {Integer[]}
def num_smaller_by_frequency(queries, words)
  ans = []
  words.each do |item|
    a = item.each_char.to_a.uniq.sort[0]
    b = item.count(a)
    ans.push(b)
  end
  ans.sort!
  tmp = []
  queries.each do |item|
    a = item.each_char.to_a.uniq.sort[0]
    b = item.count(a)
    tmp.push(b)
  end
  out = []
  l = ans.length
  tmp.each do |it|
    t = ans.bsearch_index { |item| item > it }
    if t != nil
      out.push(l - t)
    else
      out.push(0)
    end
  end
  out
end
