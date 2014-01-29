# r3
# add a date to an item
# remove item by name
# age of the item

def assert(expression)
  raise unless expression
  puts expression
end

def assert_equal left, right
  puts left == right ? true : "expected #{right} but got #{left}"
end

class Box
  attr_reader :items
  def initialize label
    @items = []
  end

  def add name, price, date
    @items << Item.new(name, price, date)
    true
  end
end

class Item
  attr_reader :name, :price, :date
  def initialize *args
    @name, @price, @date = args
  end
  def age

  end
end

box = Box.new "old stuff"
assert box.add "picture", 5, '5/10/2010' == true
assert_equal box.items.first.name, "picture"
# assert box.items.first.age == 4

