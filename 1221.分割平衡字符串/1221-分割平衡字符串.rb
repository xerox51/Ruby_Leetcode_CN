# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  lnt = 0
  rnt = 0
  ans = 0
  for i in 0...s.length
    if s[i] == "L"
      lnt += 1
    end
    if s[i] == "R"
      rnt += 1
    end
    if lnt == rnt and lnt != 0
      ans += 1
      lnt, rnt = 0, 0
    end
  end
  ans
end
