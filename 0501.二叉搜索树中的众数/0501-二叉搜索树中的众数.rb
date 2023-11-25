# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
  @base, @count, @maxCount, @answer = 0, 0, 0, []
  dfs(root)
  return @answer
end

def update(x)
  if x == @base
    @count += 1
  else
    @base, @count = x, 1
  end
  if @count == @maxCount
    @answer.push(@base)
  elsif @count > @maxCount
    @maxCount = @count
    @answer = [@base]
  end
  @answer
end

def dfs(node)
  if node == nil
    return
  end
  dfs(node.left)
  update(node.val)
  dfs(node.right)
end
