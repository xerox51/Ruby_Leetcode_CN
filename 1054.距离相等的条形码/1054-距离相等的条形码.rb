# @param {Integer[]} barcodes
# @return {Integer[]}
def rearrange_barcodes(barcodes)
  len = barcodes.length
  if len < 2
    return barcodes
  end
  counts = Hash.new
  maxcount = 0
  for item in barcodes
    if counts.has_key?(item)
      counts[item] += 1
    else
      counts[item] = 1
    end
    maxcount = [maxcount, counts[item]].max
  end
  eventindex = 0
  oddindex = 1
  halflength = len / 2
  res = Array.new(len, 0)
  counts.each_pair do |key, value|
    x = key
    count = value
    while count > 0 && count <= halflength && oddindex < len
      res[oddindex] = x
      count -= 1
      oddindex += 2
    end
    while count > 0
      res[eventindex] = x
      count -= 1
      eventindex += 2
    end
  end
  res
end
