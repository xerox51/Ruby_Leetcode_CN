# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  ans = []
  for email in emails
    ans.push(email.split("@"))
  end
  ans.each do |item|
    if item[0].include?("+")
      item[0] = item[0][0, item[0].index("+")]
      if item[0].include?(".")
        item[0].gsub!(".", "")
      end
    else
      if item[0].include?(".")
        item[0].gsub!(".", "")
      end
    end
  end
  ans.uniq.length
end
