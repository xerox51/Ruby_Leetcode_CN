# @param {String} s
# @return {Character}
def first_uniq_char(s)
  s.each_char.to_a.uniq.each do |item|
    if s.count(item) == 1
      return item
    end
  end
  " "
end
