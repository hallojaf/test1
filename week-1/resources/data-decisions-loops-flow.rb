# this file is NOT MEANT TO BE EXECUTED

#-----------------------------------------

# the following notes are related to a short presentation about how to think about programming basics

# the idea is simple: all programming languages basically have 4 common attributes that you can look for when
# you're trying to learn the new language: data, decisions, loops and flow

# the notes here are specific to Ruby but you can basically produce the same thing for any programming language

# some languages may have features that are not covered by these attributes.  sweet!  more to learn.

# one quick way to orient yourself to a new spoken language is to ask a native speaker to tell you how to express
# basic human concerns like existence, desire, hunger, sleep, hope, fear, humor, etc. and then use those words as
# markers while consuming a large volume of native content like a movie or spending time around native speakers

# similarly, one quick way to orient yourself to a new programming language is to look for these 4 common attributes
# and then use these patterns as markers while consuming a large volume of native content like open source projects
# by experts in the language

# hope this helps!

#-----------------------------------------
# Table of Contents
#-----------------------------------------

# - data
#   - variables and scoping in Ruby
#   - relative importance of variable types
#   - assignment and comparison
# - decisions
#   - if-then-else
#   - case-when
#   - guard clauses
# - loops
#   - while
#   - until
#   - Enumerable#each
# - flow
#   - procedural programming
#   - functional programming
#   - object oriented programming




#-----------------------------------------
# data
#-----------------------------------------

# http://www.techotopia.com/index.php/Ruby_Variable_Scope
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants
# http://www.randomhacks.net/articles/2007/01/20/13-ways-of-looking-at-a-ruby-symbol


# MOST IMPORTANT
# 1  local_variable   # use these all the time
# 2  .
# 3  .
# 4  CONSTANT (or Class or Module)  # use these to define things that don't change (kindof)
# 5  .
# 6  .
# 7  @instance_variable # use this when programming using object oriented style
# 8  .
# 9  .
# 0  .
# 1  @class_instance_variable
# 2  @@class_variable  # same as instance variables
# 3  .
# 4  .
# 5  .
# 6  .
# 7  .
# # NOT / ALMOST NEVER USED
# 8  --
# 9  $global_variable # don't use these
# # LEAST IMPORTANT

  a = 1
  b = true
  c = "test"
  d = [1,2,3]
  e = {x: 123, y: "abc"}
  # f = Car
  # g = Car.new

  # assignment
  left = right   # save / store the value of right in to left

  # comparison
  left == right  # compare the two sides and evaluate to TRUE if right is the same as left, otherwise evaluate FALSE
  left === right # same as above, except it's somehow "more specific" (http://stackoverflow.com/a/4467823/2836874)


#-----------------------------------------
# decisions
#-----------------------------------------
# boolean operators let you make comparisons
# http://www.tutorialspoint.com/ruby/ruby_operators.htm

  if thing_a == "hi"
  elsif thing_b == "there"
  else
  end


# http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/
  case thing_here
  when "hi"
  when "there"
  else
  end

# guard clause
# used to stop execution of a statement
# http://thechrisoshow.com/2009/02/16/using-guard-clauses-in-your-ruby-code/

  # if some_test
  #   puts "hi there"
  # end

  puts "hi there" if some_test

# inline if
# condition ? if_true : if_false

# instead of writing this
  # if some_test
  #   x = 123
  # else
  #   x = 321
  # end

# i can just write this
  x = some_test ? 123 : 321


#---------------------------------
# loops
#---------------------------------
# http://www.tutorialspoint.com/ruby/ruby_loops.htm

# MOST IMPORTANT
# 1  any of the enumerable methods like each, each_with_index, map, etc
# 2  .
# 3  .
# 4  while / until (used in either format)
# 5  break
# 6  .
# 7  for A in B (i think this is rarely used in ruby)
# 8  .
# 9  .
# 0  next
# 1  .
# 2  redo / retry
# # LEAST IMPORTANT

# while loop

condition = true
# (a) condition = false #=> how many times will x print if this line runs? [0 times]
while condition do
  # (b) condition = false #=> how many times here? [1 time]
  puts "x"
  # (c) condition = false #=> how many times will we see x if this line runs? [1 time]
end

# loops like a guard clause, on the same line
# (this is the same as above)
# puts "x" while condition


condition = true
# (a) condition = false  #=> how many times will x print if this line runs?  [1 time]
begin
  # (b) condition = false #=> how many times will x print if this line runs? [1 time]
  puts "x"
  # (c) condition = false #=> how many times will x print now? [1 time]
end while condition

#----------------------------

condition = false

# (a) condition = true  #=> how many times will i see x printed if this line executes?  [0 times]
until condition do
  # (b) condition = true  #=> how about now? [1 time]
  puts "x"
  # (c) condition = true  #=> and now? [1 time]
end

# loops like a guard clause, on the same line
# (this is the same as above)
# puts "x" until condition

# (a) condition = true #=> how many times will i see x printed if this line executes? [1 time]
begin
  # (b) condition = true #=> what about if it's this line that runs? [1 time]
  puts "x"
  # (c) condition = true #=> what effect would uncommenting this line have on the execution of the code? [1 time]
end until condition

#----------------------------

# goal: print the numbers 1 through 5.  you can ONLY add code, do not edit or delete any lines below

x = 1

until x > 5
  puts x
  x += 1
end


#-----------------

y = [1,2,3]

# for x in y do
#   puts x
# end

# check out the enumerable module
# http://www.ruby-doc.org/core-2.1.0/Enumerable.html

y.each do |x|
  puts x
end


#---------------------------------
# flow / structure / organization
#---------------------------------

# check out these tiny ruby programs, run them in your head and then test them on the machine using irb
# the goal here is to kindof develop an intuition for how the machine will execute your code
# so that, as you're writing, you can predict the validity of your code and imagine how it will run in reality
# http://sandbox.mc.edu/~bennet/ruby/code/index.html
# http://www.rubyist.net/~slagell/ruby/examples.html
# http://www.mitchr.me/SS/exampleCode/ruby.html

# procedural programming / imperative programming

x = 5
y = 1

puts x - y # prints out 4

if x - y > 0 # this is initially true so get in there!
  while x > y
    puts "x is still greater than y"
    x -= 1
  end
elsif x == y
  puts "waaa?"
else
  puts "that thing"
end

# functions
  # some named behavior that sits by itself
  do_something_cool(with, this, data) # i'm calling the function do_something_cool and passing in 3 arguments
  do_this(and_then_that(to_the_following(data, right, here))) # i'm calling 3 functions, one nested inside the other and passing in 3 args

# methods
  # some named behavior that is ATTACHED to an object / class
  "test".upcase # i'm calling the METHOD upcase on the INSTANCE of the String class which is "test"
  [1,2,3].reverse # i'm calling the METHOD reverse on the array [1,2,3]

def swap(a, b) # a and b are called parameters
  return [b, a]
end


def add_1(num)
  return num += 1
end


x = 1
y = 2

puts add_1(x)  # 2
puts add_1(add_1(x)) # 3
puts add_1(add_1(add_1(x))) # 4

# down here a and b are called arguments
puts swap(add_1(x), add_1(add_1(y))) # what would this print out?  4, 2


# functional programming
  # this is basically using functions to abstract some part of your system into a single interface
  # and then using that interface to build ever increasing complexity, like a rube goldberg machine
  # http://www.sitepoint.com/series/functional-programming-techniques-with-ruby/


# classes / objects / modules
# object oriented programming

class Car
  def initialize(color = :blue)
    @num_wheels = 4
    @color = color
  end

  def drive
    puts "i'm driving my #{@color} car."
  end

  def stop
  end

  def fill_up_with_gas
  end
end

sedan = Car.new(:orange)
sedan.drive


#------------------------------------------
#------------------------------------------


# ruby tricks
# http://www.rubyinside.com/21-ruby-tricks-902.html

