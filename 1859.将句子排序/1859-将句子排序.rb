# @param {String} s
# @return {String}
def sort_sentence(s)
  t = s.split.sort_by! { |item| item[item.length - 1] }
  t.each { |item| item.chop! }
  t.join(" ")
end
