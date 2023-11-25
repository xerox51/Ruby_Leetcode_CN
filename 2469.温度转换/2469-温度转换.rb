# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
  [celsius + 273.15, celsius * 1.8 + 32.00]
end
