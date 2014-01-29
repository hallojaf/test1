# r1
# box has a label
# I can add items to box
# I can list items in the box
def assert(expression)
  raise unless expression
  puts expression
end

class Box
  attr_reader :items
  def initialize label
    @items = []
  end

  def add item
    @items << item
    true
  end
end
box = Box.new "old stuff"
assert box.add("picture") == true
assert box.items == ["picture"]
