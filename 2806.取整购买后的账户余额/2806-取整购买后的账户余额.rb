# @param {Integer} purchase_amount
# @return {Integer}
def account_balance_after_purchase(purchase_amount)
  a = [10 - purchase_amount % 10, purchase_amount % 10].min
  if a == 5
    b = (purchase_amount / 10) * 10 + 10
  else
    b = ((purchase_amount + a) / 10) * 10
  end
  return 100 - b
end
