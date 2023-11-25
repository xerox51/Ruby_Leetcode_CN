# @param {String} word
# @return {Boolean}
def equal_frequency(word)
  ans = {}
  for i in 0...word.length
    if ans.has_key?(word[i])
      ans[word[i]] += 1
    else
      ans[word[i]] = 1
    end
  end
  arr = ans.values.uniq.sort
  if arr.length == 1 and arr[0] == 1
    return true
  elsif arr.length == 1 and arr[0] != 1
    if arr[0] == word.length
      return true
    else
      return false
    end
  elsif arr.length == 2
    if arr[1] - arr[0] == 1 and arr[0] == 1
      a = 0
      b = 0
      ans.each_pair do |key, value|
        if ans[key] == arr[0]
          a += 1
        elsif ans[key] == arr[1]
          b += 1
        end
      end
      if a == 1 or b == 1
        return true
      else
        return false
      end
    elsif arr[1] - arr[0] == 1 and arr[0] > 1
      a = 0
      b = 0
      ans.each_pair do |key, value|
        if ans[key] == arr[0]
          a += 1
        elsif ans[key] == arr[1]
          b += 1
        end
      end
      if b == 1
        return true
      else
        return false
      end
    elsif arr[1] - arr[0] > 1 and arr[0] == 1
      a = 0
      ans.each_pair do |key, value|
        if ans[key] == arr[0]
          a += 1
        end
      end
      if a == 1
        return true
      else
        return false
      end
    else
      return false
    end
  else
    return false
  end
end
