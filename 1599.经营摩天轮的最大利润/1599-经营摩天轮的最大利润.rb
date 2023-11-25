# @param {Integer[]} customers
# @param {Integer} boarding_cost
# @param {Integer} running_cost
# @return {Integer}
def min_operations_max_profit(customers, boarding_cost, running_cost)
  ans = -1
  max_profit, total_profit, operations, customers_count = 0, 0, 0, 0
  customers.each do |c|
    operations += 1
    customers_count += c
    cur_customers = [customers_count, 4].min
    customers_count -= cur_customers
    total_profit += boarding_cost * cur_customers - running_cost
    if total_profit > max_profit
      max_profit = total_profit
      ans = operations
    end
  end
  if customers_count == 0
    return ans
  end
  profit_eachtime = boarding_cost * 4 - running_cost
  if profit_eachtime <= 0
    return ans
  end
  if customers_count > 0
    full_times = customers_count / 4
    total_profit += profit_eachtime * full_times
    operations += full_times
    if total_profit > max_profit
      max_profit = total_profit
      ans = operations
    end
    remaining_customers = customers_count % 4
    remaining_profit = boarding_cost * remaining_customers - running_cost
    total_profit += remaining_profit
    if total_profit > max_profit
      operations += 1
      ans += 1
    end
  end
  ans
end
