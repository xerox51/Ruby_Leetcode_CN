# @param {String} s
# @return {String}
def sort_string(s)
  a = s.each_char.to_a.sort
  s = ""
  while not a.empty?
    b = a.uniq
    s << b.join
    a = remove(a, b)
    b = a.uniq.reverse
    s << b.join
    a = remove(a, b)
  end
  return s
end

def remove(a, b)
  for item in b
    a.delete_at(a.index(item))
  end
  return a
end
