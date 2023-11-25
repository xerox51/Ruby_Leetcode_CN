# @param {Integer} num
# @return {Integer}
def split_num(num)
  num_s = num.to_s.each_char.to_a.sort_by { |item| item.to_i }
  num1 = ""
  num2 = ""
  (0...num_s.length).step(2) do |i|
    num1 << num_s[i].to_s
    if i + 1 <= num_s.length - 1
      num2 << num_s[i + 1].to_s
    end
  end
  num1.to_i + num2.to_i
end
