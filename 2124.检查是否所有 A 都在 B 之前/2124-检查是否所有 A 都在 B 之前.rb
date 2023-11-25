# @param {String} s
# @return {Boolean}
def check_string(s)
  flag = true
  for i in 0...s.length - 1
    if s[i] == "b" and s[i] != s[i + 1]
      flag = false
      break
    end
  end
  flag
end
