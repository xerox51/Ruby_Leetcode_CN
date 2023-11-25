# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  temp = accounts[0].sum
  accounts.each do |item|
    if item.sum > temp
      temp = item.sum
    end
  end
  temp
end
