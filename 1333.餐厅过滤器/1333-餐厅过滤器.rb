# @param {Integer[][]} restaurants
# @param {Integer} vegan_friendly
# @param {Integer} max_price
# @param {Integer} max_distance
# @return {Integer[]}
def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  restaurants.select! { |item| item[2] >= vegan_friendly and item[3] <= max_price and item[4] <= max_distance }
  restaurants.sort_by! { |item| [-item[1], -item[0]] }
  restaurants.map { |item| item[0] }
end
