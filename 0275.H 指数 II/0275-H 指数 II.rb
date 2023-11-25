# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  n = citations.length
  left, right = 0, n - 1
  while left <= right
    mid = left + (right - left) / 2
    if citations[mid] >= n - mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  n - left
end
