# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  row = Array.new(row_index + 1, 0)
  row[0] = 1
  (1..row_index).to_a.each do |i|
    row[i] = 1 * row[i - 1] * (row_index - i + 1) / i
  end
  row
end
