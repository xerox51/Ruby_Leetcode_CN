# @param {String} s
# @return {Integer}
def calculate(s)
  x, y = 1, 0
  for i in 0...s.length
    if s[i].eql?("A")
      x = 2 * x + y
    else
      y = 2 * y + x
    end
  end
  x + y
end
