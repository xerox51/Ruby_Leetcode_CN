# @param {String} expression
# @return {String[]}
def brace_expansion_ii(expression)
  ret = {}
  queue = []
  queue.push(expression)
  while queue.length != 0
    curr = queue[0]
    queue.shift
    left, right = -1, 0
    while right < curr.length && curr[right] != "}"
      if curr[right] == "{"
        left = right
      end
      right += 1
    end
    if left == -1
      ret[curr] = 1
      next
    end
    start = curr[0, left]
    ending = curr[right + 1, curr.length - right - 1]
    words = curr[left + 1, right - left - 1].split(",")
    words.each do |word|
      queue.push([start, word, ending].join(""))
    end
  end
  list_s = ret.keys
  list_s.sort!
  list_s
end
