# @param {Integer[]} arr
# @return {Integer}
def num_factored_binary_trees(arr)
  n = arr.length
  arr.sort!
  dp = Array.new(n, 1)
  res, mod = 0, 10 ** 9 + 7
  0.upto(n - 1) do |i|
    left, right = 0, i - 1
    while left <= right
      while right >= left and arr[left] * arr[right] > arr[i]
        right -= 1
      end
      if right >= left and arr[left] * arr[right] == arr[i]
        if right != left
          dp[i] = (dp[i] + dp[left] * dp[right] * 2) % mod
        else
          dp[i] = (dp[i] + dp[left] * dp[right]) % mod
        end
      end
      left += 1
    end
    res = (res + dp[i]) % mod
  end
  res
end
