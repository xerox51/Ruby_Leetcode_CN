# @param {Integer[]} bucket
# @param {Integer[]} vat
# @return {Integer}
def store_water(bucket, vat)
  n = bucket.length
  maxk = vat.max
  if maxk == 0
    return 0
  end
  res = 1.0 / 0.0
  k = 1
  while k <= maxk && k < res
    t = 0
    (0...n).each do |i|
      t += [0, (vat[i] + k - 1) / k - bucket[i]].max
    end
    res = [res, t + k].min
    k += 1
  end
  res
end
