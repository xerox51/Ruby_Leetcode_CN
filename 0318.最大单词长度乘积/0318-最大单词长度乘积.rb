# @param {String[]} words
# @return {Integer}
def max_product(words)
  map = {}
  len = words.length
  for i in 0...len
    mask = 0
    word = words[i]
    wordlength = word.length
    for j in 0...wordlength
      mask |= 1 << (word[j].ord - "a".ord)
    end
    if map[mask] == nil
      map[mask] = 0
    end
    if wordlength > map[mask]
      map[mask] = wordlength
    end
  end
  maxprod = 0
  markset = map.keys.to_h { |it| [it, 1] }
  markset.each_key do |mask1|
    if map[mask1] == nil
      map[mask1] = 0
    end
    wordlength1 = map[mask1]
    markset.each_key do |mask2|
      if mask1 & mask2 == 0
        if map[mask2] == nil
          map[mask2] = 0
        end
        wordlength2 = map[mask2]
        maxprod = [maxprod, wordlength1 * wordlength2].max
      end
    end
  end
  maxprod
end
