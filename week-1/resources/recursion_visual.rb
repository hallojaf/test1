@counter = 0

def recursion
  @counter += 1
  puts "-"*(@counter*3) + "Recursion: stack level #{@counter}"
  recursion if @counter < 5
  puts "-"*(@counter*3) + "Returning: stack level #{@counter}"
  @counter -= 1
end

recursion
