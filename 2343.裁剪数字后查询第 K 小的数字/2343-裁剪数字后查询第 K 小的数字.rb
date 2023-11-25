# @param {String[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def smallest_trimmed_numbers(nums, queries)
  idx = (0...nums.length).to_a.sort_by! { |item| nums[item][-1].to_i }
  ans = Array.new(queries.length, 0)
  j = 2
  query = queries.zip((0...queries.length).to_a).sort_by! { |item| item[0][1] }
  for i in 0...query.length
    while j <= query[i][0][1]
      idx.sort_by! { |item| nums[item][-j].to_i }
      j += 1
    end
    ans[query[i][1]] = idx[query[i][0][0] - 1]
  end
  return ans
end
