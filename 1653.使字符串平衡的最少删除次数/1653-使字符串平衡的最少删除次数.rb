# @param {String} s
# @return {Integer}
def minimum_deletions(s)
  leftb, righta = 0, s.count("a")
  res = righta
  s.each_char.to_a.each do |c|
    if c == "a"
      righta -= 1
    else
      leftb += 1
    end
    res = [res, leftb + righta].min
  end
  res
end
