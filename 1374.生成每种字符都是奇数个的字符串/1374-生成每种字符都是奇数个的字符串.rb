# @param {Integer} n
# @return {String}
def generate_the_string(n)
  s = ""
  if n.odd?
    s << "a" * n
    return s
  else
    if (n / 2).even?
      l = n / 2
      left = l - 1
      right = l + 1
      s << "a" * left
      s << "b" * right
      return s
    else
      l = n / 2
      s << "a" * l
      s << "b" * l
      return s
    end
  end
end
