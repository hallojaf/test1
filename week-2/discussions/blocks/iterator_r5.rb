# r5: ok, we can't come to you everytime we want to add an operation, can you please build us an iterator that supports any number of operations?
def iterator array, block1, block2
  index = 0
  while index < array.length
    puts block1.call array[index]
    puts block2.call array[index]
    index += 1
  end
end

block1 = Proc.new {|num| num * num }
block2 = Proc.new {|num| num + num }

iterator [1, 2, 3], block1, block2
