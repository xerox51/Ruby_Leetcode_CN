# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  citations.sort!
  h = 0
  i = citations.length - 1
  while i >= 0 and citations[i] > h
    h += 1
    i -= 1
  end
  h
end
