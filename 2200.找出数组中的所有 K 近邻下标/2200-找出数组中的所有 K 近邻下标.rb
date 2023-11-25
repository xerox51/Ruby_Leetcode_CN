# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  ans = []
  tmp = (0...nums.length).to_a.select { |item| nums[item] == key }
  if tmp.empty?
    return []
  else
    tmp.each do |it|
      nums.each_index do |index|
        if (index - it).abs <= k
          ans.push(index)
        end
      end
    end
    return ans.uniq.sort
  end
end
