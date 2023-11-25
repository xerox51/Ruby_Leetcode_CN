# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  tmp = details.map { |item| item[11, 2].to_i }
  tmp.select! { |item| item > 60 }
  tmp.length
end
