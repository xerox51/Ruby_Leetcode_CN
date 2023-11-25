# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
  return counts("1", s) > counts("0", s)
end

def counts(c, s)
  for i in 0...s.length
    num = c * (s.length - i)
    if s.include?(num)
      return s.length - i
    end
  end
  0
end
