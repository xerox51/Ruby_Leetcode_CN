# @param {Integer} target
# @return {Integer[][]}
def file_combination(target)
  vec = []
  total, limit = 0, (target - 1) / 2
  for i in 1..limit
    j = i
    while true
      total += j
      if total > target
        total = 0
        break
      elsif total == target
        res = Array.new(j - i + 1, 0)
        for k in i..j
          res[k - i] = k
        end
        vec.push(res)
        total = 0
        break
      end
      j += 1
    end
  end
  vec
end
