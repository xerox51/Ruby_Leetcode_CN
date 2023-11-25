# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  if letters.bsearch { |element| element.ord > target.ord } == nil
    return letters[0]
  else
    return letters.bsearch { |element| element.ord > target.ord }
  end
end
