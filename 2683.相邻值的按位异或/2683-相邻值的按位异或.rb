# @param {Integer[]} derived
# @return {Boolean}
def does_valid_array_exist(derived)
  xor = 0
  derived.each do |item|
    xor = xor ^ item
  end
  xor == 0
end
