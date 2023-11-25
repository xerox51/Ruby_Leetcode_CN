# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  code = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]
  temp = Array.new(words.length, "")
  for i in 0...words.length
    words[i].each_char do |c|
      temp[i] += code[c.ord - 97]
    end
  end
  temp.uniq.length
end
