# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  def generate(a)
    if a.length == 2 * @n
      if valid(a)
        @ans.push(a.join)
      end
    else
      a.push("(")
      generate(a)
      a.pop
      a.push(")")
      generate(a)
      a.pop
    end
  end

  def valid(a)
    bal = 0
    for i in 0...a.length
      if a[i] == "("
        bal += 1
      else
        bal -= 1
      end
      if bal < 0
        return false
      end
    end
    return bal == 0
  end

  @ans = []
  @n = n
  generate([])
  return @ans
end
