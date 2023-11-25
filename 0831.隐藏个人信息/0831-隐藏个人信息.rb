# @param {String} s
# @return {String}
def mask_pii(s)
  if s.include?("@")
    ans1 = s.split("@")[0][0].downcase
    ans2 = s.split("@")[0][-1].downcase
    ans = [ans1, "*****", ans2].join
    ans3 = s.split("@")[1].downcase
    ans = [ans, "@", ans3].join
    return ans
  else
    ans = []
    for i in 0...s.length
      if s[i].ord >= 48 and s[i].ord <= 57
        ans.push(s[i])
      end
    end
    if ans.length == 10
      ans1 = ans[6, 4].join
      ans0 = "***-***-"
      ans = [ans0, ans1].join
      return ans
    elsif ans.length == 11
      ans1 = ans[7, 4].join
      ans0 = "+*-***-***-"
      ans = [ans0, ans1].join
      return ans
    elsif ans.length == 12
      ans1 = ans[8, 4].join
      ans0 = "+**-***-***-"
      ans = [ans0, ans1].join
      return ans
    else
      ans1 = ans[9, 4].join
      ans0 = "+***-***-***-"
      ans = [ans0, ans1].join
      return ans
    end
  end
end
