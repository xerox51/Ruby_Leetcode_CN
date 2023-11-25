# @param {String} sentence
# @param {Integer} discount
# @return {String}
def discount_prices(sentence, discount)
  ans = sentence.split
  for i in 0...ans.length
    if ans[i].start_with?("$") and (not ans[i].count("$") > 1) and ans[i].length > 1
      unless ans[i].each_char.to_a.any? { |c| c.ord >= 97 and c.ord <= 122 }
        if (ans[i][1, ans[i].length - 1].to_i * (100 - discount) / 100.00).to_s[-2] == "."
          ans[i] = ans[i][0] + (ans[i][1, ans[i].length - 1].to_i * (100 - discount) / 100.00).to_s + "0"
        else
          ans[i] = ans[i][0] + (ans[i][1, ans[i].length - 1].to_i * (100 - discount) / 100.00).to_s
        end
      end
    end
  end
  return ans.join(" ")
end
