# @param {String} s
# @return {Integer}
def roman_to_int(s)
  symbolhash = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
  ans = 0
  for i in 0...s.length
    if i < s.length - 1 and symbolhash[s[i]] < symbolhash[s[i + 1]]
      ans -= symbolhash[s[i]]
    else
      ans += symbolhash[s[i]]
    end
  end
  ans
end
