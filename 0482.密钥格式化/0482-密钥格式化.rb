# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  temp = s.upcase.gsub("-", "")
  if temp.length <= k
    return temp
  else
    ans = []
    start = 0
    if temp.length % k != 0
      start = temp.length % k
      ans = [temp[0, start], "-"]
    end
    (start..temp.length - 1).step(k) do |i|
      ans.push(temp[i, k])
      ans.push("-")
    end
    ans.pop
    ans.join
  end
end
