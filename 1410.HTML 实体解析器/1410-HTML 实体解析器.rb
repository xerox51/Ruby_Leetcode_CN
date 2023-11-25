# @param {String} text
# @return {String}
def entity_parser(text)
  entityMap = { '&quot;': '"',
                '&apos;': "'",
                '&gt;': ">",
                '&lt;': "<",
                '&frasl;': "/",
                '&amp;': "&" }
  i = 0
  n = text.length
  res = []
  while i < n
    isEntity = false
    if text[i] == "&"
      entityMap.each_pair do |key, value|
        if text[i, key.to_s.length] == key.to_s
          res.push(entityMap[key])
          isEntity = true
          i += key.length
          break
        end
      end
    end
    unless isEntity
      res.push(text[i])
      i += 1
    end
  end
  res.join
end
