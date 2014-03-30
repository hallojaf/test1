# r2: addition or square
def iterator array, operations=:add
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

iterator [1, 2, 3], :square
