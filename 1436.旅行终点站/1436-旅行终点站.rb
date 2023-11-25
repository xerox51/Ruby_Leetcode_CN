# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  for i in 0...paths.length
    if (paths.flatten.count(paths[i][1])).to_i == 1
      return paths[i][1]
    end
  end
end
