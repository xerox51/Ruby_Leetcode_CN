# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  ans = []
  0.upto(n) do |i|
    ans.push(i.to_s(2).count("1"))
  end
  ans
end
