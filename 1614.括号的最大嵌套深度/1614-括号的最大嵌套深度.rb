# @param {String} s
# @return {Integer}
def max_depth(s)
  unless s.include?("(")
    return 0
  else
    temp = 0
    answer = []
    ans = []
    for i in 0...s.length - 1
      if s[i] == "("
        temp += 1
        ans.push("(")
        answer.push(temp)
      elsif s[i] == ")" and ans[ans.length - 1] == "("
        temp -= 1
        ans.pop
        answer.push(temp)
      else
        next
      end
    end
    return answer.max
  end
end
