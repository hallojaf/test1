require 'debugger'
require 'colorize'
debugger

you = "mom"
puts "hi #{you}".red

puts "hi %-10s, how are %s".blue % ["mom", "you"]


print "hi there ... "
puts "done."


x = [1,2,3]
p x
puts x.inspect


__END__
x = 0

while true
  x += 1
  break if x > 3
  debugger
end

stuff = Array.new(x) { %w[fee fi fo fum].sample }

p stuff

unless stuff.empty?
  stuff.pop
end

p stuff

puts "all done!"