# @param {String} s
# @return {Boolean}
def is_valid(s)
  pairs = { "(" => ")", "[" => "]", "{" => "}" }
  ans = []
  s.each_char do |c|
    if pairs.values.include?(c) and ans[ans.length - 1] != pairs.key(c)
      return false
    end
    if pairs.keys.include?(c)
      ans.push(c)
    end
    if ans[ans.length - 1] == pairs.key(c)
      ans.pop
    end
  end
  return ans.empty?
end
