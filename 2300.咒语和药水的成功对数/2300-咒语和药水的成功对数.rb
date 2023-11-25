# @param {Integer[]} spells
# @param {Integer[]} potions
# @param {Integer} success
# @return {Integer[]}
def successful_pairs(spells, potions, success)
  potions.sort!
  m = potions.length
  ans = []
  spells.each do |spell|
    it = potions.bsearch_index { |item| item * spell >= success }
    if it != nil
      ans.push(m - it)
    elsif it == nil
      ans.push(0)
    end
  end
  ans
end
