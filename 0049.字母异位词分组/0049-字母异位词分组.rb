# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  h = {}
  strs.each_with_index do |item, index|
    a = item.each_char.to_a.sort
    if not h.has_key?(a)
      h[a] = [strs[index]]
    elsif h.has_key?(a)
      h[a].push(strs[index])
    end
  end
  ans = []
  h.each_key do |key|
    ans.push(h[key])
  end
  ans
end
