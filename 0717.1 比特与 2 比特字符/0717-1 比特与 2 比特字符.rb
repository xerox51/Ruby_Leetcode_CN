# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  if bits[-1] == 1
    return false
  elsif bits.length == 1 and bits[0] == 0
    return true
  else
    l = bits.length
    n = bits.length
    i = 0
    while i <= l - 1
      if bits[i] == 0
        n -= 1
        i += 1
      else
        n -= 2
        i += 2
      end
      if n == 1
        return true
      end
    end
    return false
  end
end
