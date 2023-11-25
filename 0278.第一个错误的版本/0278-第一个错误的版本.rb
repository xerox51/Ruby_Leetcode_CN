# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  while left <= right
    mid = (left + right) / 2
    if is_bad_version(mid) and is_bad_version(mid + 1)
      right = mid - 1
    elsif (not is_bad_version(mid)) and (not is_bad_version(mid - 1))
      left = mid + 1
    end
    if is_bad_version(mid) and (not is_bad_version(mid - 1))
      return mid
    end
    if (not is_bad_version(mid)) and is_bad_version(mid + 1)
      return mid + 1
    end
  end
end
