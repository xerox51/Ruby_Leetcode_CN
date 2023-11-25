# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
  arr = (names).zip(heights)
  arr.sort_by! { |element| element[1] }
  arr.reverse!
  ans = []
  for item in arr
    ans.push(item[0])
  end
  ans
end
