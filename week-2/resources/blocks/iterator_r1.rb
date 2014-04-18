# create simple method that takes an array of integers and perform specific operations on them:

# r1: addition
def iterator array
  index = 0
  while index < array.length
    puts array[index] + array[index]
    index += 1
  end
end

iterator [1, 2, 3]
