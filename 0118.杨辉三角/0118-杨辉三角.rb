# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  ret = []
  (1..num_rows).to_a.each do |item|
    temp = Array.new(item) { 0 }
    ret.push(temp)
  end
  (0...num_rows).to_a.each do |i|
    ret[i][0] = ret[i][i] = 1
    (1..i - 1).to_a.each do |j|
      ret[i][j] = ret[i - 1][j] + ret[i - 1][j - 1]
    end
  end
  ret
end
