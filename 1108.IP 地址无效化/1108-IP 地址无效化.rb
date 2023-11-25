# @param {String} address
# @return {String}
def defang_i_paddr(address)
  address.split(".").join("[.]")
end
