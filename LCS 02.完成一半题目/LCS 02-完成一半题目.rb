# @param {Integer[]} questions
# @return {Integer}
def half_questions(questions)
  h = {}
  for i in 0...questions.length
    if h.has_key?(questions[i])
      h[questions[i]] += 1
    end
    unless h.has_key?(questions[i])
      h[questions[i]] = 1
    end
  end
  ans = h.values.sort.reverse
  total = 0
  for i in 0...ans.length
    total += ans[i]
    if total >= questions.length / 2
      return i + 1
      break
    end
  end
end
