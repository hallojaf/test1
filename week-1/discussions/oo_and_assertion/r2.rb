# r2
# item has a name
# item has a price
def assert(expression)
  raise unless expression
  puts expression
end

class Box
  attr_reader :items
  def initialize label
    @items = []
  end

  def add name, price
    @items << {:name => name, :price => price}
    true
  end
end

box = Box.new "old stuff"
assert box.add("picture", 5) == true
assert box.items == [{:name => "picture", :price => 5}]
assert box.items.first[:name] == "picture"
