# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  for i in 1...n
    l = (n - i).to_s
    r = i.to_s
    if (not l.include?("0")) and (not r.include?("0"))
      return [i, n - i]
    end
  end
end
