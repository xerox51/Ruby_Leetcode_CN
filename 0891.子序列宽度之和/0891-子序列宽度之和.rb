def sum_subseq_widths(nums)
  arr = nums.sort
  total = 0
  n = arr.length
  arr1 = [2]
  t = 10 ** 9 + 7
  for i in 1..n - 1
    arr1.push((arr1[i - 1] * 2) % t)
  end
  for i in 0...n - 1
    total += arr[i + 1] * (arr1[i] - 1) - arr[i] * (arr1[n - i - 2] - 1)
  end
  (total + t) % t
end
