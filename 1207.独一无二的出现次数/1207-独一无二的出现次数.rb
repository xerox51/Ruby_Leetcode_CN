# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  answer = []
  arr.uniq.each do |i|
    answer.push(arr.count(i))
  end
  return answer.uniq.length == arr.uniq.length
end
