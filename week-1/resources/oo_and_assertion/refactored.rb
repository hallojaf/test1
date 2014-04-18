# box has a label
# I can add items to box
# I can list items in the box
# item has a name, price and date
# TODO:
# remove item by name
# age of the item

def assert_equal actual, expected
  puts actual == expected ? true : "expected #{expected} but got #{actual}"
end

class Box
  attr_reader :items, :label
  def initialize label
    @items = []
    @label = label
  end

  def add item
    # I would generally raise ArgumentError, but it will make our test more complex. We will explore that next week.
    return "you must pass an item object" unless item.is_a? Item
    @items << item
    true
  end
end

class Item
  attr_reader :name, :price, :date
  def initialize args
    @name = args[:name]
    @price = args[:price]
    @date = args[:date]
  end
  def age

  end
end

# box
box = Box.new "old stuff"
item = Item.new({:name => "picture", :price => 5, :date => '5/10/2010'})
assert_equal box.add(item), true
assert_equal box.add("book"), "you must pass an item object"
assert_equal box.label, "old stuff"

# item
assert_equal item.name, "picture"
assert_equal item.price, 5
assert_equal item.date, "5/10/2010"


