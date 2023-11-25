# @param {Integer[]} nums
# @param {Integer[][]} sequences
# @return {Boolean}
def sequence_reconstruction(nums, sequences)
  h = {}
  for seq in sequences
    for i in 0...seq.length - 1
      h[g_hash(seq[i], seq[i + 1])] = [seq[i], seq[i + 1]]
    end
  end
  for i in 0...nums.length - 1
    unless h.has_key?(g_hash(nums[i], nums[i + 1]))
      return false
    end
  end
  return true
end

def g_hash(prev, next_n)
  return prev << 14 | next_n
end
