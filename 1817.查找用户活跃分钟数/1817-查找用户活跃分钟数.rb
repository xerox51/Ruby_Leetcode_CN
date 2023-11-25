# @param {Integer[][]} logs
# @param {Integer} k
# @return {Integer[]}
def finding_users_active_minutes(logs, k)
  h = {}
  log = logs.uniq
  log.each_with_index do |item, index|
    if h.has_key?(item[0])
      h[item[0]] += 1
    else
      h[item[0]] = 1
    end
  end
  ans = Array.new(k, 0)
  m = h.values.uniq
  temp = h.values
  n = m.map { |item| temp.count(item) }
  h1 = m.zip(n).to_h { |item| [item[0], item[1]] }
  ans.each_with_index do |item, index|
    if h1.has_key?(index + 1)
      ans[index] = h1[index + 1]
    end
  end
  ans
end
