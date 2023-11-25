# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
  nums.sort!
  under = nums.select { |item| item <= 0 }
  up = nums.reject { |item| item <= 0 }
  u = under.length
  p = up.length
  if u <= k and u > 1
    l = k - u
    if l % 2 == 0
      return -under.sum + up.sum
    else
      if p == 0
        return -under.sum + up.sum + 2 * under[-1]
      elsif p >= 1
        if under[-1] + up[0] <= 0
          return -under.sum + up.sum - 2 * up[0]
        else
          return -under.sum + up.sum + 2 * under[-1]
        end
      end
    end
  elsif u <= k and u == 1
    if k % 2 == 0
      return under.sum + up.sum
    else
      return -under.sum + up.sum
    end
  elsif u > k
    l = u - k
    return -under[0, k].sum + under[k, l].sum + up.sum
  elsif u == 0 and k % 2 == 0
    return up.sum
  elsif u == 0 and k % 2 == 1
    return up.sum - 2 * up[0]
  end
end
