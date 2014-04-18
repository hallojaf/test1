# r3: occasionally we like to reverse the array first
def iterator array, operations=:add, reverse=false
  array.reverse! if reverse
  index = 0
  while index < array.length
    case operations
    when :square
      puts array[index] * array[index]
    else
      puts array[index] + array[index]
    end
    index += 1
  end
end

iterator [1, 2, 3], :add
