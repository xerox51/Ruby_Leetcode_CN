# @param {Integer[]} amount
# @return {Integer}
def fill_cups(amount)
  amount.sort!
  if amount.last >= amount[0, 2].sum
    return amount.last
  elsif amount.last < amount[0, 2].sum
    if amount.sum.even?
      return amount.sum / 2
    else
      return amount.sum / 2 + 1
    end
  end
end
