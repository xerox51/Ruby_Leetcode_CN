# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  ans = []
  logs.each do |item|
    ans.push(item.split)
  end
  t = ans.select { |element| element[-1].each_char.to_a.all? { |c| c.ord >= 97 and c.ord <= 122 } }
  num = ans - t
  t.sort_by! { |item| [item[1, item.length - 1], item[0]] }
  temp = []
  t.concat(num).each do |item|
    temp.push(item.join(" "))
  end
  temp
end
