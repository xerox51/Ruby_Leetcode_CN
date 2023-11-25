# @param {String} s
# @return {Integer}
def find_the_longest_balanced_substring(s)
  stack = [0, 0]
  ans = 0
  for i in 0...s.length
    if stack == [0, 0] and s[i] == "0"
      stack[0] += 1
    elsif s[i] == "0" and stack[0] > 0 and stack[1] == 0
      stack[0] += 1
    elsif s[i] == "1" and stack[0] > 0 and stack[1] < stack[0]
      stack[1] += 1
    elsif s[i] == "0" and stack[1] < stack[0] and stack[1] > 0
      ans = [stack[1] * 2, ans].max
      stack = [1, 0]
    end
    if stack.max != 0 and stack[0] == stack[1]
      ans = [stack[0] * 2, ans].max
      stack = [0, 0]
    end
  end
  [ans, stack[1] * 2].max
end
