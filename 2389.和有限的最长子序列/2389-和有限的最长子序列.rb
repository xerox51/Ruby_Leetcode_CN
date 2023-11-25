# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  nums.sort!
  ans = []
  for i in 1..nums.length
    t = nums[0, i]
    ans.push(t.sum)
  end
  answer = []
  flag = 0
  for j in 0...queries.length
    temp = ans.bsearch_index { |item| item >= queries[j] }
    if queries[j] > ans.last and temp == nil
      flag = nums.length
    elsif queries[j] < ans.first and temp == nil
      flag = 0
    elsif ans[temp] > queries[j]
      flag = temp
    elsif ans[temp] == queries[j]
      flag = temp + 1
    end
    answer.push(flag)
  end
  answer
end
