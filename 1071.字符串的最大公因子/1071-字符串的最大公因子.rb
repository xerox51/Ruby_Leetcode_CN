# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  gcd_s_len = str1.length.gcd(str2.length)
  gcd_s = str1[0, gcd_s_len]
  if str1 + str2 == str2 + str1
    return gcd_s
  end
  return ""
end
