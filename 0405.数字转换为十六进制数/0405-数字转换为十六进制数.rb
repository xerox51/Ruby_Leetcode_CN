# @param {Integer} num
# @return {String}
def to_hex(num)
  if num == 0
    return "0"
  end
  sb = []
  7.downto(0) do |i|
    val = (num >> (4 * i)) & 0xf
    if sb.length > 0 || val > 0
      if val < 10
        digit = ("0".ord + val).chr
      else
        digit = ("a".ord + val - 10).chr
      end
      sb.push(digit)
    end
  end
  sb.join
end
