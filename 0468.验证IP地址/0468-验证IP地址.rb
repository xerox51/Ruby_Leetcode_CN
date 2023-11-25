# @param {String} query_ip
# @return {String}
def valid_ip_address(query_ip)
  if query_ip.include?(".") and query_ip.include?(":")
    return "Neither"
  end
  if query_ip.include?(".") and (not query_ip.include?(":"))
    if query_ip.end_with?(".")
      return "Neither"
    end
    ans = query_ip.split(".")
    if ans.length < 4 or ans.length > 4
      return "Neither"
    end
    for i in 0...ans.length
      if ans[i].length > 1 and ans[i].start_with?("0")
        return "Neither"
      end
      if ans[i].each_char.to_a.any? { |c| c.downcase.ord >= 97 and c.downcase.ord <= 122 }
        return "Neither"
      end
      if ans[i].to_i > 255
        return "Neither"
      end
      if ans[i].length > 3 or ans[i] == ""
        return "Neither"
      end
    end
    return "IPv4"
  end
  if (not query_ip.include?(".")) and query_ip.include?(":")
    if query_ip.end_with?(":")
      return "Neither"
    end
    ans = query_ip.split(":")
    if ans.length < 8 or ans.length > 8
      return "Neither"
    end
    for i in 0...ans.length
      if ans[i] == "" or ans[i].length > 4
        return "Neither"
      end
      if ans[i].each_char.to_a.any? { |c| c.downcase.ord > 102 and c.downcase.ord <= 122 }
        return "Neither"
      end
    end
    return "IPv6"
  end
  if (not query_ip.include?(".")) and (not query_ip.include?(":"))
    return "Neither"
  end
end
