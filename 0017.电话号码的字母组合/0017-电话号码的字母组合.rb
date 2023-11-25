# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  @digits = digits
  @key_hash = {
    2 => "abc", 3 => "def", 4 => "ghi",
    5 => "jkl", 6 => "mno", 7 => "pqrs",
    8 => "tuv", 9 => "wxyz",
  }
  @res = []
  @combination = []

  def backtrack(i)
    if @combination.size == @digits.size
      @res << @combination.join
      return
    end

    letters = @key_hash[@digits[i].to_i]
    letters.chars.each do |l|
      @combination << l
      backtrack(i + 1)
      @combination.pop
    end
  end

  backtrack(0)
  @res
end
