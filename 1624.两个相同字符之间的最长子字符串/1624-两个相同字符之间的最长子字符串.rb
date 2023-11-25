# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
  t = s.each_char.to_a.uniq.select { |element| s.count(element) > 1 }
  if t.empty?
    return -1
  else
    temp = get_ans(t[0], s)
    t.each do |item|
      if get_ans(item, s) > temp
        temp = get_ans(item, s)
      end
    end
  end
  temp
end

def get_ans(c, s)
  s.rindex(c) - s.index(c) - 1
end
