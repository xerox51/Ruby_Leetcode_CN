# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  ransom_note.squeeze.each_char do |c|
    if (ransom_note.count(c)).to_i > (magazine.count(c)).to_i
      return false
    end
  end
  return true
end
