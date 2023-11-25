# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def find_the_winner(n, k)
  sequence = Array.new(n, false)
  list_a = Array.new
  num = 1
  while (sequence.any?(false))
    for i in 0..n - 1
      unless sequence[i]
        if num == k
          sequence[i] = true
          temp = i + 1
          list_a << temp
          num = 1
        else
          num += 1
        end
      end
    end
  end
  list_a.last
end
