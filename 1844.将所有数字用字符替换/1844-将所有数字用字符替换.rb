# @param {String} s
# @return {String}
def replace_digits(s)
  (1..s.length - 1).step(2) do |i|
    s[i] = (s[i - 1].ord + s[i].to_i).chr
  end
  s
end
