# ---------- Week 1 basic assertions ----------------------

# beginner versions
def assert test
  raise unless test
end

def assert_equal(actual, expected)
  raise unless actual == expected
end

# intermediate version - Check out the message handling on this bad boy.
def assert_equal(actual, expected, msg = nil)
  msg = msg || "Expected #{actual} to equal #{expected}."
  raise msg unless actual == expected
end

# ---------- Other simple, custom assertions --------------
# Note that the method names allow future people who use your code
# to understand what you were testing for.

def assert_empty(obj, msg = nil)
  msg = msg || "#{obj.inspect} should be empty"
  raise msg unless obj.empty?
end

def assert_includes(collection, item, msg = nil)
  msg = msg || "Expected #{collection.inspect} to include #{item.inspect}"
  raise msg unless collection.include?(item)
end

def assert_class(obj, type, msg = nil)
  msg = msg || "#{obj.inspect} is not a #{type}"
  raise msg unless obj.is_a? type
end

# Do you understand what the previous tests do? Write some example methods
# and passing tests for them. Check it in your console. Go ahead, I'll wait.

# ---------- assert_raise ---------------------------------

# beginner version
def assert_raise(proc)
  begin
    proc.call
  rescue Exception => e
    return nil
  end
  raise "An exception was not raised!"
end

# As a judgement note, using Exception in a rescue call is frowned
# upon because the Exception class is too vague. Therefore:

# intermediate version
def assert_raise(desired_error, proc)
  begin
    proc.call
  rescue desired_error => e
    return nil  #=> Tests typically don't say anything unless they fail.
  end
  raise "#{desired_error.inspect} was not raised!"
end

# advanced = Add the possibility for a custom message in the method arguments,
# and even possibly return a message when the error is raised.
# How would you accomplish this?


# Maybe put it here. If you want. No pressure. (Some pressure.)



# contrived example methods
def add_three_or_more(*args)
  raise ArgumentError if args.length < 3
  args.inject(:+)
end

def hello name
  raise TypeError.new("name must be a string") unless name.is_a? String
  "hello #{name}"
end

# sample passing assert_raise test
assert_raise(ArgumentError, proc{ add_three_or_more(1, 2)})
assert_raise(TypeError, lambda{ hello(1) })

# ---------- assert_change ---------------------------------

# beginner version
def assert_change(subject, change_by, changer)
  before = subject.call
  changer.call
  raise unless subject.call == (before+change_by)
end

# intermediate version - Add some custom message handling. Use your existing
# assert_equal within the assert_change to keep your testing methods DRY.
# This is good for you.


# Do it here.



# advanced - What if the changer method took a variable and an
# attribute by that variable amount?


# Make it happen.



# contrived example class
class Whatever
  attr_accessor :blahblah

  def initialize
    @blahblah = 0
  end

  def as_if
    @blahblah += 2
  end
end

# sample passing assert_change test
w = Whatever.new  #=> set a test case (not a great idea without a testing framework)
assert_change ->{ w.blahblah }, 2, ->{ w.as_if }
