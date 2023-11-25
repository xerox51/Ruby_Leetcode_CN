# @param {Integer} n
# @return {Integer[]}
def lexical_order(n)
  (1..n).to_a.sort_by! { |element| element.to_s }
end
