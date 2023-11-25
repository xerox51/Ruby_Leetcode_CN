class MagicDictionary
  def initialize()
    @words = []
  end

=begin
    :type dictionary: String[]
    :rtype: Void
=end
  def build_dict(dictionary)
    @words = dictionary
  end

=begin
    :type search_word: String
    :rtype: Boolean
=end
  def search(search_word)
    ans = @words.select { |element| element.length == search_word.length }
    if ans.empty?
      return false
    else
      for item in ans
        if judge(item, search_word)
          return true
        end
      end
      return false
    end
  end

  def judge(worda, wordb)
    ans = 0
    for i in 0...worda.length
      if worda[i] != wordb[i]
        ans += 1
      end
      if ans == 2
        break
      end
    end
    if ans != 1
      return false
    else
      return true
    end
  end
end

# Your MagicDictionary object will be instantiated and called as such:
# obj = MagicDictionary.new()
# obj.build_dict(dictionary)
# param_2 = obj.search(search_word)
