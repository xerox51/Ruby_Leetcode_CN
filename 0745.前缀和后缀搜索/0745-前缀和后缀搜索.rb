class WordFilter

=begin
    :type words: String[]
=end
  def initialize(words)
    @d = {}
    words.each_with_index do |item, index|
      m = item.length
      for pre in 1..m
        for suff in 1..m
          @d[item[0, pre] + "#" + item[-suff, suff]] = index
        end
      end
    end
  end

=begin
    :type pref: String
    :type suff: String
    :rtype: Integer
=end
  def f(pref, suff)
    if @d.has_key?(pref + "#" + suff)
      return @d[pref + "#" + suff]
    else
      return -1
    end
  end
end
