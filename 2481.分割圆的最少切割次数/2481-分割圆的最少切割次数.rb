# @param {Integer} n
# @return {Integer}
def number_of_cuts(n)
  if n % 2 == 0
    n / 2
  elsif n == 1
    0
  else
    n
  end
end
