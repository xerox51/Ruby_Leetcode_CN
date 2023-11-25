# @param {Integer} n
# @return {String}
def count_and_say(n)
  prev = "1"
  2.upto(n) do |i|
    curr = ""
    start = 0
    pos = 0
    while pos < prev.length
      while pos < prev.length && prev[pos] == prev[start]
        pos += 1
      end
      curr << (pos - start).to_s + prev[start]
      start = pos
    end
    prev = curr
  end
  prev
end
