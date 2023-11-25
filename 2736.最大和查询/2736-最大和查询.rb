# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[][]} queries
# @return {Integer[]}
def maximum_sum_queries(nums1, nums2, queries)
  sortednums = nums1.zip(nums2).sort_by { |item| -item[0] }
  a = (0...queries.length).to_a
  a_queries = a.zip(queries).map { |item| [item[0], item[1][0], item[1][1]] }
  sortedqueries = a_queries.sort_by { |item| -item[1] }
  stack = []
  answer = Array.new(queries.length, -1)
  j = 0
  for i, x, y in sortedqueries
    while j < sortednums.length and sortednums[j][0] >= x
      num1, num2 = sortednums[j]
      while stack.length > 0 and stack[-1][1] <= num1 + num2
        stack.pop
      end
      if stack.length == 0 or stack[-1][0] < num2
        stack.push([num2, num1 + num2])
      end
      j += 1
    end
    k = stack.bsearch_index { |item| item[0] >= y }
    if k != nil
      if k < stack.length
        answer[i] = stack[k][1]
      end
    end
  end
  answer
end
