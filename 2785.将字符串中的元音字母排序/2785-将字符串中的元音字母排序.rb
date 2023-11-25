# @param {String} s
# @return {String}
def sort_vowels(s)
  h = { "A" => true, "E" => true, "I" => true, "O" => true, "U" => true,
        "a" => true, "e" => true, "i" => true, "o" => true, "u" => true }
  c = s.each_char.to_a
  a = []
  b = []
  c.each_with_index do |item, index|
    if h.has_key?(item)
      a.push(item)
      b.push(index)
    end
  end
  a.sort!
  b.each_with_index do |item, index|
    c[item] = a[index]
  end
  c.join
end
