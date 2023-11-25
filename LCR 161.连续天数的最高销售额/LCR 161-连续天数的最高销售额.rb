def max_sub_array(nums)
  nums.reduce([]) { |a, v| a << [a[-1].to_i + v, v].max }.max
end
