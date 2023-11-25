# @param {String[]} words
# @return {Integer[]}
def last_visited_integers(words)
  ans = []
  nums = []
  k = 0
  for word in words
    if word != "prev"
      nums.push(word.to_i)
      k = 0
    else
      k += 1
      if k > nums.length
        ans.push(-1)
      else
        ans.push(nums[-k])
      end
    end
  end
  ans
end
