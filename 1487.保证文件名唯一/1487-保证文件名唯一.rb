# @param {String[]} names
# @return {String[]}
def get_folder_names(names)
  ans = []
  index = {}
  names.each do |name|
    unless index.has_key?(name)
      ans.push(name)
      index[name] = 1
    else
      k = index[name]
      while index.has_key?(name + "(" + k.to_s + ")")
        k += 1
      end
      t = name + "(" + k.to_s + ")"
      ans.push(t)
      index[name] = k + 1
      index[t] = 1
    end
  end
  ans
end
