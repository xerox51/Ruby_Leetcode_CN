# @param {String} s
# @return {String}
def modify_string(s)
  arr = s.each_char.to_a
  for i in 0...s.length
    if arr[i] == "?"
      ch = "a".ord
      chend = "c".ord
      for j in ch..chend
        if (i > 0 and arr[i - 1] == j.chr) or (i < s.length - 1 and arr[i + 1] == j.chr)
          next
        end
        arr[i] = j.chr
        break
      end
    end
  end
  return arr.join
end
