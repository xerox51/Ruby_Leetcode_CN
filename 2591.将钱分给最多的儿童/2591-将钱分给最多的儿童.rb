# @param {Integer} money
# @param {Integer} children
# @return {Integer}
def dist_money(money, children)
  if money < children
    return -1
  else
    m = money / 8
    if m == children and children * 8 == money
      return m
    elsif m == 0
      return 0
    elsif m > children and money - children * 8 != 4
      return children - 1
    elsif m > children and money - children * 8 == 4
      return children - 2
    elsif m == children and children * 8 < money
      return m - 1
    elsif m < children
      n = money
      while true
        if n - m * 8 >= children - m and (not(children - m == 1 and n - m * 8 == 4))
          break
        else
          m -= 1
        end
      end
      return m
    end
  end
end
