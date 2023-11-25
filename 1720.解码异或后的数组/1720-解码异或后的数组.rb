# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
  n = encoded.length + 1
  arr = Array.new(n, 0)
  arr[0] = first
  1.upto(n - 1) do |i|
    arr[i] = arr[i - 1] ^ encoded[i - 1]
  end
  arr
end
