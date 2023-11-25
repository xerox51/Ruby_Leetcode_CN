# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
  if sequence.length < word.length
    return 0
  end
  count = 0
  for i in 1..sequence.length / word.length
    if sequence.include?(word * i)
      count += 1
    end
  end
  count
end
