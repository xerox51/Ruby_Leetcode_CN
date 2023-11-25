# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  answer = []
  counts = 0
  tickets.each_with_index do |item, index|
    if item >= tickets[k] and index > k
      counts += 1
    end
    a = item - tickets[k]
    if a < 0
      answer.append(a.abs)
    end
  end
  return tickets.length * tickets[k] - answer.sum - counts
end
