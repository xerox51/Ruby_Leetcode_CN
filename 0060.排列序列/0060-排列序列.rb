# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_permutation(n, k)
  ans = []
  for i in 1..n
    ans.push(i)
  end
  answer = []
  count = 0
  ans.permutation do |item|
    count += 1
    if count == k
      temp = ""
      for i in item
        temp << i.to_s
      end
      return temp
    end
  end
end
