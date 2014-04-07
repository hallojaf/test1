# r4: we want to support random operation on the array and also we want to add cube to the possible operations

def iterator array, operations=:add, order=:normal
  array.reverse! if order == :reverse
  array.shuffle! if order == :shuffle
  index = 0
  while index < array.length
    case operations
    when :square
      puts array[index] * array[index]
    when :cube
      puts array[index] * array[index] * array[index]
    else
      puts array[index] + array[index]
    end
    index += 1
  end
end

iterator [1, 2, 3], :cube, :shuffle
