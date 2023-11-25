# @param {Integer[]} records
# @return {Integer}
def take_attendance(records)
  a = (0..records.length).to_a
  records = records.to_h { |item| [item, true] }
  a.each do |item|
    unless records.has_key?(item)
      return item
    end
  end
end
