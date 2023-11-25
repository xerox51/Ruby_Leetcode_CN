# @param {Integer[]} gem
# @param {Integer[][]} operations
# @return {Integer}
def give_gem(gem, operations)
  operations.each do |operation|
    k = gem[operation[0]] / 2
    gem[operation[0]] -= k
    gem[operation[1]] += k
  end
  gem.max - gem.min
end
