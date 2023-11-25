# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  if n % 2 == 0
    return (-(n / 2)..-1).to_a.concat((1..n / 2).to_a)
  else
    return (-(n / 2)..-1).to_a.concat((1..n / 2).to_a, [0])
  end
end
