# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  res = []
  m, n, ls = words.length, words[0].length, s.length
  n.times do |i|
    if i + m * n > ls
      break
    end
    differ = {}
    m.times do |j|
      word = s[i + j * n, n]
      if differ.has_key?(word)
        differ[word] += 1
      else
        differ[word] = 1
      end
    end
    words.each do |word|
      if differ.has_key?(word)
        differ[word] -= 1
        if differ[word] == 0
          differ.delete(word)
        end
      else
        differ[word] = -1
      end
    end
    (i..ls - m * n).step(n) do |start|
      if start != i
        word = s[start + (m - 1) * n, n]
        if differ.has_key?(word)
          differ[word] += 1
        else
          differ[word] = 1
        end
        if differ[word] == 0
          differ.delete(word)
        end
        word = s[start - n, n]
        if differ.has_key?(word)
          differ[word] -= 1
          if differ[word] == 0
            differ.delete(word)
          end
        else
          differ[word] = -1
        end
      end
      if differ.length == 0
        res.push(start)
      end
    end
  end
  res
end
