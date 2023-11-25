# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
  h = { "type" => 0, "color" => 1, "name" => 2 }
  answer = items.select { |item| item[h[rule_key]] == rule_value }
  answer.length
end
