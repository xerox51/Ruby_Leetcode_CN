# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
  items = items1.concat(items2)
  items.sort_by! { |item| item[0] }
  h = {}
  for item in items
    if h.has_key?(item[0])
      h[item[0]] += item[1]
    else
      h[item[0]] = item[1]
    end
  end
  h.to_a
end
