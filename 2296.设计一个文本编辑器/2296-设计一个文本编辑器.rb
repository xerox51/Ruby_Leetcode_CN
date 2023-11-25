class TextEditor
  attr_accessor :cur
  attr_accessor :root

  def initialize()
    self.cur = Node.new
    self.root = self.cur
    self.root.prev = self.root
    self.root.next = self.root
  end

=begin
    :type text: String
    :rtype: Void
=end
  def add_text(text)
    for i in 0...text.length
      self.cur = self.cur.insert(Node.new(text[i]))
    end
  end

=begin
    :type k: Integer
    :rtype: Integer
=end
  def delete_text(k)
    k0 = k
    while k > 0 and self.cur != self.root
      self.cur = self.cur.prev
      self.cur.next.remove
      k -= 1
    end
    return k0 - k
  end

  def text()
    s = []
    k, cur = 10, self.cur
    while k > 0 and cur != self.root
      s.push(cur.ch)
      cur = cur.prev
      k -= 1
    end
    s.reverse.join("")
  end

=begin
    :type k: Integer
    :rtype: String
=end
  def cursor_left(k)
    while k > 0 and self.cur != self.root
      self.cur = self.cur.prev
      k -= 1
    end
    return self.text()
  end

=begin
    :type k: Integer
    :rtype: String
=end
  def cursor_right(k)
    while k > 0 and self.cur.next != self.root
      self.cur = self.cur.next
      k -= 1
    end
    return self.text()
  end
end

# Your TextEditor object will be instantiated and called as such:
# obj = TextEditor.new()
# obj.add_text(text)
# param_2 = obj.delete_text(k)
# param_3 = obj.cursor_left(k)
# param_4 = obj.cursor_right(k)

class Node
  attr_accessor :prev
  attr_accessor :next
  attr_accessor :ch

  def initialize(ch = "")
    self.prev = nil
    self.next = nil
    self.ch = ch
  end

  def insert(node)
    node.prev = self
    node.next = self.next
    node.prev.next = node
    node.next.prev = node
    return node
  end

  def remove()
    self.prev.next = self.next
    self.next.prev = self.prev
  end
end
