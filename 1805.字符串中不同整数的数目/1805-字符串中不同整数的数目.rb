# @param {String} word
# @return {Integer}
def num_different_integers(word)
  temp = word.split(/[a-z]/).select { |element| not element.empty? }
  array_toi(temp).uniq.length
end

def array_toi(items)
  temp = []
  items.each do |item|
    temp.push(item.to_i)
  end
  temp
end
