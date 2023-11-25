# @param {String} s
# @return {Boolean}
def check_record(s)
  if (s.count "A").to_i >= 2 or s.include? "LLL"
    false
  else
    true
  end
end
