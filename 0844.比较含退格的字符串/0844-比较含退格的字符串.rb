# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  back(s).eql?(back(t))
end

def back(s)
  stack = []
  s.each_char do |c|
    unless c.eql?("#")
      stack.push(c)
    end
    if c.eql?("#") and not stack.empty?
      stack.pop
    end
    if c.eql?("#") and stack.empty?
      next
    end
  end
  stack.join
end
